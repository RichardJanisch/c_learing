//// includes ////
#include <iostream>
#include <boost/asio.hpp>
#include "TcpServer.hpp"

//// defines ////

//// typedefs/stucts ////

//// static vars ////

//// global vars ////

//// classes ////

class EchoServerObserver : public TcpServer::Observer 
{
 public:
  void onConnectionAccepted(int connectionId) override {
    std::cout << "Client connected: " << connectionId << std::endl;
  }

  void onReceived(int connectionId, const char *data, size_t size) override {
    std::string message(data, size);
    std::cout << "Received from client " << connectionId << ": " << message << std::endl;
    // Echo the message back to the client
    m_server->send(connectionId, data, size);
  }

  void onConnectionClosed(int connectionId) override {
    std::cout << "Client disconnected: " << connectionId << std::endl;
  }

  void setServer(TcpServer *server) {
    m_server = server;
  }

 private:
  TcpServer *m_server;
};

//// prototypes ////

//// functions ////

int main() 
{
  try {
    boost::asio::io_context ioContext;
    EchoServerObserver observer;
    TcpServer server(ioContext, observer);

    observer.setServer(&server);

    // Listen on IP address 127.0.0.1 and port 12345
    if (!server.listen(boost::asio::ip::tcp::v4(), 12345)) {
      std::cerr << "Failed to start the server" << std::endl;
      return 1;
    }

    std::cout << "Server is listening on 127.0.0.1:12345" << std::endl;

    // Start accepting connections
    server.startAcceptingConnections();

    // Run the io_context in a separate thread
    std::thread ioThread([&ioContext]() { ioContext.run(); });

    // Wait for the user to terminate the server
    std::cout << "Press Enter to stop the server..." << std::endl;
    std::cin.get();

    // Stop the server
    server.close();
    ioContext.stop();
    ioThread.join();
  } catch (const std::exception &e) {
    std::cerr << "Error: " << e.what() << std::endl;
  }

  return 0;
}

