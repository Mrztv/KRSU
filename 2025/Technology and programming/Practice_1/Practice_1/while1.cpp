#include <iostream>

int main() {
    int i = 1;
    while(i<10){
        std::cout << i*i << std::endl;
        i++;
    }

    i = 10;
    do {
        std::cout << i << std::endl;
        i--;
    } while (i>0);

}
