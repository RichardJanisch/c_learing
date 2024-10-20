#ifndef TCPIP_CLIENT_H
#define TCPIP_CLIENT_H

//// includes ////
#include <boost/asio.hpp>
#include <stdint.h>
#include "tcp_msg.h"

//// defines ////

//// typedefs/stucts ////

//// static vars ////

//// global vars ////

//// aliases ////
namespace asio = boost::asio;
using tcp = asio::ip::tcp;

//// prototypes ////
typedef std::function<void(uint8_t bOk)> ConnectionCB;
typedef std::function<void(void *pData, uint8_t msgType)> ReceiveCB;

//// functions ////

//// classes ////

namespace my_tcp_client 
{
    class TcpClient 
    {
        private:
            tcp::socket m_Socket;
            asio::io_context m_IoContext;
            std::string m_ServerIP;
            uint16_t m_Port;

        public:
            TcpClient();
            ~TcpClient();

            void set_server_ip(const std::string& server_ip);
            void set_port(uint16_t port);
            void connect_to_server(ConnectionCB ConnectionCB, ReceiveCB ReceiveCB); 
            void get_object(uint8_t object_id);

            std::string receive_message();
    };
}  
// namespace my_tcp_client

#endif  // TCPIP_CLIENT_H
