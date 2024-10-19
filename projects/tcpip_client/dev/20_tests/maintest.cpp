#include <gtest/gtest.h>

class Calculator {
public:
    int add(int a, int b) {
        return a + b;
    }
};

TEST(CalculatorTest, AdditionTest) {
    Calculator calc;
    EXPECT_EQ(calc.add(2, 3), 5);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
