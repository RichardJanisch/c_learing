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
class MyClientObserver : public TcpClient::Observer 
{
 public:
  void onConnected() override {
    std::cout << "Connected to the server!" << std::endl;
  }

  void onReceived(const char *data, size_t size) override 
  {
    MSG_ACK_t MsgAck;
    MsgAck = *reinterpret_cast<const MSG_ACK_t*>(data);

    if(MsgAck.msgType == MSG_ACK)
    {
        std::cout << "Received MSG_ACK from server: " << std::endl;
        std::cout << "Identifier: " << MsgAck.identifier << std::endl;
    }
    else
    {
        std::cout << "Received unknown message type from server: " << MsgAck.msgType << std::endl;
    }
  }

  void onDisconnected() override {
    std::cout << "Disconnected from the server!" << std::endl;
  }
};

//// prototypes ////

//// functions ////

int main() 
{
    try
    {
        boost::asio::io_context ioContext;
        MyClientObserver observer;
        TcpClient client(ioContext, observer);

        // Define the server address and port
        boost::asio::ip::tcp::endpoint endpoint(
            boost::asio::ip::address::from_string("127.0.0.1"), 12345);

        // Connect to the server
        client.connect(endpoint);

        // Run the io_context in a separate thread
        std::thread ioThread([&ioContext]() { ioContext.run(); });

        // Send a message to the server
        MSG_ACK_t MsgAck;
        MsgAck.msgType = MSG_ACK;
        MsgAck.identifier = 1;

        client.send(reinterpret_cast<char*>(&MsgAck), sizeof(MsgAck));

        // Wait for some time to receive a response
        std::this_thread::sleep_for(std::chrono::seconds(2));

        // Disconnect from the server
        client.disconnect();

        // Stop the io_context and join the thread
        ioContext.stop();
        ioThread.join();
    } 
    catch (const std::exception &e) 
    {
        std::cerr << "Error: " << e.what() << std::endl;
    }

  return 0;
}
