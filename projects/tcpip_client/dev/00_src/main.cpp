//// includes ////
#include <iostream>


//// defines ////

//// typedefs/stucts ////

//// static vars ////

//// global vars ////

//// classes ////

//// prototypes ////

//// functions ////






class Calculator {
public:
    int add(int a, int b) {
        return a + b;
    }
};

int main() {
    Calculator calc;
    std::cout << "5 + 3 = " << calc.add(5, 3) << std::endl;
    return 0;
}
