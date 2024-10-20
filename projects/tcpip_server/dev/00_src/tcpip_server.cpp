//// includes //// 
#include "tcpip_server.h"
#include <iostream>

namespace asio = boost::asio;
using tcp = asio::ip::tcp;

namespace my_tcp_server {

TcpServer::TcpServer(asio::io_context& io_context, short port)
    : acceptor_(io_context, tcp::endpoint(tcp::v4(), port)) 
{
    // Nichts weiter zu tun hier, Server-Konfiguration im Konstruktor
}

TcpServer::~TcpServer() 
{
    // Optional: Ressourcenfreigabe oder Logging
}

void TcpServer::run()
{
    try 
    {
        start_accept();  // Beginne Verbindungen zu akzeptieren
    } 
    catch (const std::exception& e) 
    {
        std::cerr << "Error starting server: " << e.what() << std::endl;
        throw;  // Fehler weiterwerfen, um extern behandelt zu werden
    }
}

void TcpServer::start_accept() 
{
    // Socket erstellen und auf Verbindungen warten
    try 
    {
        tcp::socket socket(acceptor_.get_executor());
        acceptor_.async_accept(socket, [this, socket = std::move(socket)](const boost::system::error_code& error) mutable 
        {
            if (!error) 
            {
                handle_client(std::move(socket));
            }
            start_accept();  // Nächsten Client akzeptieren
        });
    } 
    catch (const std::exception& e) 
    {
        std::cerr << "Error accepting connection: " << e.what() << std::endl;
        throw;
    }
}

void TcpServer::handle_client(tcp::socket socket) 
{
    // Hier werden Daten vom Client empfangen und verarbeitet
    try 
    {
        asio::async_read(socket, asio::buffer(data_, sizeof(MSG_GET_OBJECT_t)),
            [this, socket = std::move(socket)](boost::system::error_code ec, std::size_t length) mutable 
            {
                if (!ec && length > 0) {
                    uint8_t msgType = data_[0];  // Nachrichtentyp identifizieren
                    process_message(msgType, std::move(socket));  // Übergibt die Bearbeitung je nach Nachrichtentyp
                }
            });
    } 
    catch (const std::exception& e) 
    {
        std::cerr << "Error handling client: " << e.what() << std::endl;
        throw;
    }
}

void TcpServer::process_message(uint8_t msgType, tcp::socket socket) 
{
    switch (msgType) 
    {
        case MSG_ACK: 
        {
            MSG_ACK_t* msg = reinterpret_cast<MSG_ACK_t*>(data_);
            std::cout << "Received MSG_ACK, Identifier: " << msg->identifier << std::endl;

            // Antwort senden
            asio::async_write(socket, asio::buffer(data_, sizeof(MSG_ACK_t)),
                [](boost::system::error_code ec, std::size_t) {
                    if (!ec) 
                    {
                        std::cout << "Response sent for MSG_ACK." << std::endl;
                    }
                });
            break;
        }

        case MSG_ERROR: 
        {
            MSG_ERROR_t* msg = reinterpret_cast<MSG_ERROR_t*>(data_);
            std::cout << "Received MSG_ERROR, Error Code: " << (int)msg->errorCode << std::endl;

            // Antwort senden
            asio::async_write(socket, asio::buffer(data_, sizeof(MSG_ERROR_t)),
                [](boost::system::error_code ec, std::size_t) {
                    if (!ec) 
                    {
                        std::cout << "Response sent for MSG_ERROR." << std::endl;
                    }
                });
            break;
        }

        case MSG_GET_OBJECT: 
        {
            MSG_GET_OBJECT_t* msg = reinterpret_cast<MSG_GET_OBJECT_t*>(data_);
            std::cout << "Received MSG_GET_OBJECT, ObjectID: " << (int)msg->ObjectID << std::endl;

            // Antwort senden
            asio::async_write(socket, asio::buffer(data_, sizeof(MSG_GET_OBJECT_t)),
                [](boost::system::error_code ec, std::size_t)
                {
                    if (!ec) 
                    {
                        std::cout << "Response sent for MSG_GET_OBJECT." << std::endl;
                    }
                });
            break;
        }

        case MSG_SET_OBJECT:
        {
            MSG_SET_OBJECT_t* msg = reinterpret_cast<MSG_SET_OBJECT_t*>(data_);
            std::cout << "Received MSG_SET_OBJECT, Value: " << (int)msg->Value << std::endl;

            // Antwort senden
            asio::async_write(socket, asio::buffer(data_, sizeof(MSG_SET_OBJECT_t)),
                [](boost::system::error_code ec, std::size_t) {
                    if (!ec) 
                    {
                        std::cout << "Response sent for MSG_SET_OBJECT." << std::endl;
                    }
                });
            break;
        }

        default:
            std::cerr << "Unknown message type received." << std::endl;
            break;
    }
}

}  // namespace my_tcp_server
