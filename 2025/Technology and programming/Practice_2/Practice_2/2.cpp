#include <iostream>

int main() {
    int max = 0, input;
    bool exit = false;
    while (!exit) {
        std::cout << "Enter number:" << std::endl;
        std::cin >> input;
        if (input == 0) {
            exit = true;
        }
        if (input > max) {
            max = input;
        }
    }

    std::cout << "Max: " << max << std::endl;
}
