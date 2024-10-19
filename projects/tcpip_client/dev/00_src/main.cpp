//// includes ////
#include <iostream>
#include "calculator.h"

//// defines ////

//// typedefs/stucts ////

//// static vars ////

//// global vars ////

//// classes ////

//// prototypes ////

//// functions ////


int main() {
    Calculator calc;
    int result = calc.add(5, 3);
    std::cout << "5 + 3 = " << result << std::endl;

    result = calc.subtract(5, 3);
    std::cout << "5 - 3 = " << result << std::endl;

    return 0;
}

