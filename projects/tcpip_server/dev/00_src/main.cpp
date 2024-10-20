//// includes ////
#include <iostream>
#include "tcpip_server.h"

//// defines ////

//// typedefs/stucts ////

//// static vars ////

//// global vars ////

//// classes ////

//// prototypes ////

//// functions ////

int main() 
{
    try 
    {
        boost::asio::io_context io_context;
        my_tcp_server::TcpServer server(io_context, 12345);  // Beispiel: Port 12345
        server.run();
        io_context.run();  // Startet das asynchrone Handling
    } 
    catch (const std::exception& e) 
    {
        std::cerr << "Error in server: " << e.what() << std::endl;
    }

    return 0;
}

