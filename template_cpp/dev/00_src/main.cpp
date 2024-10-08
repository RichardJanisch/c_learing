#include <iostream>

class MyClass 
{
private:
    int privateMember;

public:
    MyClass() : privateMember(0) {
        // Constructor
    }

    ~MyClass() {
        // Destructor
    }

    void displayMessage() const {
        std::cout << "Hello from MyClass!" << std::endl;
    }

    // Getter for privateMember
    int getPrivateMember() const {
        return privateMember;
    }

    // Setter for privateMember
    void setPrivateMember(int value) {
        privateMember = value;
    }
};

int main() 
{
    MyClass myObject;
    myObject.displayMessage();
    
    return 0;
}