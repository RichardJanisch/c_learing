//// includes //// 
#include "tcpip_server.h"
#include <iostream>

TcpServer::TcpServer(boost::asio::io_context& io_context, short port)
    : acceptor_(io_context, boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), port)) {
    start_accept();
}

TcpServer::~TcpServer() {
    // Optional: Server-Zerstörungshandling hier
}

void TcpServer::start_accept() {
    // Verwende io_context direkt, anstelle von get_executor()
    boost::asio::ip::tcp::socket socket(acceptor_.get_io_context());
    acceptor_.async_accept(socket, [this, socket = std::move(socket)](const boost::system::error_code& error) mutable {
        if (!error) {
            handle_client(std::move(socket));
        }
        start_accept();  // Starte das Akzeptieren für den nächsten Client
    });
}

void TcpServer::handle_client(boost::asio::ip::tcp::socket socket) {
    auto self = this;
    boost::asio::async_read(socket, boost::asio::buffer(data_, sizeof(MSG_GET_OBJECT_t)),  // Lese die Größe der größten Struktur
        [this, self, socket = std::move(socket)](boost::system::error_code ec, std::size_t length) mutable {
            if (!ec && length > 0) {
                // Identifiziere den Nachrichtentyp
                uint8_t msgType = data_[0];

                switch (msgType) {
                    case MSG_ACK: {
                        MSG_ACK_t* msg = reinterpret_cast<MSG_ACK_t*>(data_);
                        std::cout << "Received MSG_ACK, Identifier: " << msg->identifier << std::endl;

                        // Antwort (Dummy, sendet dieselbe Nachricht zurück)
                        boost::asio::async_write(socket, boost::asio::buffer(data_, sizeof(MSG_ACK_t)),
                            [](boost::system::error_code ec, std::size_t) {
                                if (!ec) {
                                    std::cout << "Response sent for MSG_ACK." << std::endl;
                                }
                            });
                        break;
                    }

                    case MSG_ERROR: {
                        MSG_ERROR_t* msg = reinterpret_cast<MSG_ERROR_t*>(data_);
                        std::cout << "Received MSG_ERROR, Error Code: " << (int)msg->errorCode << std::endl;

                        // Dummy-Antwort
                        boost::asio::async_write(socket, boost::asio::buffer(data_, sizeof(MSG_ERROR_t)),
                            [](boost::system::error_code ec, std::size_t) {
                                if (!ec) {
                                    std::cout << "Response sent for MSG_ERROR." << std::endl;
                                }
                            });
                        break;
                    }

                    case MSG_GET_OBJECT: {
                        MSG_GET_OBJECT_t* msg = reinterpret_cast<MSG_GET_OBJECT_t*>(data_);
                        std::cout << "Received MSG_GET_OBJECT, ObjectID: " << (int)msg->ObjectID << std::endl;

                        // Dummy-Antwort: Sende dieselbe Nachricht zurück
                        boost::asio::async_write(socket, boost::asio::buffer(data_, sizeof(MSG_GET_OBJECT_t)),
                            [](boost::system::error_code ec, std::size_t) {
                                if (!ec) {
                                    std::cout << "Response sent for MSG_GET_OBJECT." << std::endl;
                                }
                            });
                        break;
                    }

                    case MSG_SET_OBJECT: {
                        MSG_SET_OBJECT_t* msg = reinterpret_cast<MSG_SET_OBJECT_t*>(data_);
                        std::cout << "Received MSG_SET_OBJECT, Value: " << (int)msg->Value << std::endl;

                        // Dummy-Antwort
                        boost::asio::async_write(socket, boost::asio::buffer(data_, sizeof(MSG_SET_OBJECT_t)),
                            [](boost::system::error_code ec, std::size_t) {
                                if (!ec) {
                                    std::cout << "Response sent for MSG_SET_OBJECT." << std::endl;
                                }
                            });
                        break;
                    }

                    default:
                        std::cout << "Unknown message type received." << std::endl;
                        break;
                }
            }
        });
}
