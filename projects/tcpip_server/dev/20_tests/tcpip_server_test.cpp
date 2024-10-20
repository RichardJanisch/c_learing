#include <gtest/gtest.h>
#include <boost/asio.hpp>

#include "../00_src/tcpip_server.h"
#include "../00_src/tcp_msg.h"

TEST(TcpServerTest, ServerRespondsCorrectly) {
    boost::asio::io_context io_context;

    // Starte den Server
    TcpServer server(io_context, 12345);

    // Simuliere einen Client, der eine Nachricht sendet
    boost::asio::ip::tcp::socket client(io_context);
    client.connect(boost::asio::ip::tcp::endpoint(boost::asio::ip::address::from_string("127.0.0.1"), 12345));

    // Sende eine MSG_GET_OBJECT Nachricht
    MSG_GET_OBJECT_t request = {MSG_GET_OBJECT, 100, 42};  // ObjectID = 42
    boost::asio::write(client, boost::asio::buffer(&request, sizeof(MSG_GET_OBJECT_t)));

    // Empfange die Antwort
    MSG_GET_OBJECT_t reply;
    boost::asio::read(client, boost::asio::buffer(&reply, sizeof(MSG_GET_OBJECT_t)));

    // Überprüfe, ob die Antwort die gleiche wie die Anfrage ist
    EXPECT_EQ(reply.MsgType, MSG_GET_OBJECT);
    EXPECT_EQ(reply.Identifier, 100);
    EXPECT_EQ(reply.ObjectID, 42);
}

int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
