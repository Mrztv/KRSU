#include <iostream>

int main() {
    int i = 0;
    int sum = 0;
    while (i * i <= 81) {
        std::cout << i * i << std::endl;
        sum += i*i;
        i++;
    }
    std::cout << "Sum: " << sum << std::endl;
    return 0;
}