cmake_minimum_required(VERSION 3.10)
project(MyTcpServerProject)

# C++ Version festlegen
set(CMAKE_CXX_STANDARD 17)

# Ausgabeverzeichnis für Binaries
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../10_bin)

# Quell- und Testdateien
set(SOURCE_FILES 
    00_src/main.cpp 
    00_src/TcpServer.cpp 
    00_src/TcpConnection.cpp 
    00_src/tcp_msg.h)
set(TEST_FILES 20_tests/tcpip_server_test.cpp)

# Google Test finden
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# Boost finden und einbinden
find_package(Boost 1.70 REQUIRED COMPONENTS system thread)
include_directories(${Boost_INCLUDE_DIRS})

# Executable für das Hauptprogramm
add_executable(tcpip_server ${SOURCE_FILES})

# Tests als separates Executable
add_executable(tcpip_server_test ${TEST_FILES})

# Boost-Bibliotheken verlinken
target_link_libraries(tcpip_server ${Boost_LIBRARIES})
target_link_libraries(tcpip_server_test ${Boost_LIBRARIES} GTest::GTest GTest::Main pthread)

# Debug-Symbole aktivieren
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS_DEBUG "-g")

# Testverzeichnis für CTest auf dev/20_testing festlegen
set(CTEST_BINARY_DIRECTORY ${CMAKE_SOURCE_DIR}/dev/20_testing)
set_property(GLOBAL PROPERTY CTEST_BINARY_DIRECTORY "${CMAKE_SOURCE_DIR}/dev/20_testing")

# Testing aktivieren und das Verzeichnis ändern
enable_testing()

# Testausführung beim `make test`
add_test(NAME AllTestsInMaintest COMMAND tcpip_server_test)
