//// includes ////
#include <boost/asio.hpp>
#include <stdint.h>
#include "tcp_msg.h"
# include "tcpip_client.h"

//// defines ////

//// typedefs/stucts ////

//// static vars ////

//// global vars ////

//// aliases ////
namespace asio = boost::asio;
using tcp = asio::ip::tcp;

//// prototypes ////

//// functions ////

//// methods ////

namespace my_tcp_client 
{
    my_tcp_client::TcpClient::TcpClient() : m_Socket(m_IoContext), m_Port(0) {}

    TcpClient::~TcpClient() 
    {
        // Schließe die Socket-Verbindung bei der Zerstörung des Objekts
        if (m_Socket.is_open()) 
        {
            m_Socket.close();
        }
    }

    void TcpClient::set_server_ip(const std::string& server_ip) 
    {
        m_ServerIP = server_ip;
    }

    void TcpClient::set_port(uint16_t port) 
    {
        m_Port = port;
    }

}  // namespace my_tcp_client
