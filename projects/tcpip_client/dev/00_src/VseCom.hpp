//// includes ////
#include <iostream>
#include <boost/asio.hpp>
#include <thread>
#include "TcpClient.hpp"
#include "tcp_msg.h"

//// defines ////

//// typedefs/stucts ////

//// static vars ////

//// global vars ////

//// classes ////

class VSECom : public TcpClient::Observer 
{
    public:
        struct Observer 
        {
            virtual void onConnected();
            virtual void onAck();
            virtual void onDisconnected();
        };

        void setIpAddr(std::string ipAddr);
        void setPort(int port);
        void initVsCom();

        VSECom(Observer &observer);
        ~VSECom();

    private:
        void onConnected() override;
        void onReceived(const char *data, size_t size) override ;
        void onDisconnected() override;

        boost::asio::io_context m_ioContext;
        Observer &m_observer;
};