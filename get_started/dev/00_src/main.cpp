#include <iostream>

class MyClass 
{
public:
    MyClass() {
        // Constructor
    }

    ~MyClass() {
        // Destructor
    }

    void displayMessage() const {
        std::cout << "Hello from MyClass!" << std::endl;
    }
};

int main() {
    MyClass myObject;
    myObject.displayMessage();
    return 0;
}