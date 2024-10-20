#ifndef TCP_SERVER_H
#define TCP_SERVER_H

//// includes //// 
#include <boost/asio.hpp>
#include "tcp_msg.h"

//// defines ////

//// typedefs/stucts ////

//// static vars ////

//// global vars ////

//// classes ////
namespace my_tcp_server {

class TcpServer 
{
public:
    TcpServer(boost::asio::io_context& io_context, short port);
    ~TcpServer();

    void run();  // Öffentliche Methode zum Starten des Servers

private:
    void start_accept();  // Zustandsändernde Funktion
    void handle_client(boost::asio::ip::tcp::socket socket);  // Zustandsändernde Funktion
    void process_message(uint8_t msgType, boost::asio::ip::tcp::socket socket);  // Nachrichtentypen verarbeiten

    boost::asio::ip::tcp::acceptor acceptor_;
    char data_[256];  // Puffer für eingehende Nachrichten
};

}  // namespace my_tcp_server

//// prototypes ////

//// functions ////

#endif // TCP_SERVER_H
