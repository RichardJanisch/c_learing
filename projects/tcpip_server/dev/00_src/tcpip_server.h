#ifndef TCP_SERVER_H
#define TCP_SERVER_H

//// incluedes //// 
#include <boost/asio.hpp>
#include "tcp_msg.h"


//// classes ////
class TcpServer {
public:
    TcpServer(boost::asio::io_context& io_context, short port);
    ~TcpServer();

private:
    void start_accept();
    void handle_client(boost::asio::ip::tcp::socket socket);

    boost::asio::ip::tcp::acceptor acceptor_;
    char data_[256];  // Puffer für eingehende Nachrichten (ausreichend groß für verschiedene Nachrichtentypen)
};

#endif // TCP_SERVER_H
