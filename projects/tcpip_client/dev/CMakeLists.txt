cmake_minimum_required(VERSION 3.10)
project(MyTcpClientProject)

# C++ Version festlegen
set(CMAKE_CXX_STANDARD 17)

# Ausgabeverzeichnis für Binaries
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../10_bin)

# Quell- und Testdateien
set(SOURCE_FILES 00_src/main.cpp 00_src/calculator.cpp 00_src/calculator.h)
set(TEST_FILES 20_tests/calculator_test.cpp)

# Google Test finden
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# Executable für das Hauptprogramm
add_executable(tcpip_client ${SOURCE_FILES})

# Tests als separates Executable
add_executable(calculator_test ${TEST_FILES} 00_src/calculator.cpp)  # Hier hinzufügen

# Google Test mit den Tests verlinken
target_link_libraries(calculator_test GTest::GTest GTest::Main pthread)

# Debug-Symbole aktivieren
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS_DEBUG "-g")

# Testausführung beim `make test`
enable_testing()
add_test(NAME AllTestsInMaintest COMMAND calculator_test)
