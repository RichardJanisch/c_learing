#include <gtest/gtest.h>
#include "../00_src/tcpip_server.h"

TEST(TcpIpClientTest, AdditionTest) {
    Calculator calc;
    EXPECT_EQ(calc.add(2, 3), 5);
    EXPECT_EQ(calc.add(-1, -1), -2);
}

TEST(TcpIpClientTest, SubtractionTest) {
    Calculator calc;
    EXPECT_EQ(calc.subtract(5, 3), 2);
    EXPECT_EQ(calc.subtract(3, 5), -2);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
