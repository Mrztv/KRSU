#include <iostream>

int main() {
    int loop = true;
    while (loop) {

        int A, B;
        std::cout << "Enter the value of A: " << std::endl;
        std::cin >> A;
        std::cout << std::endl << "Enter the value of B: " << std::endl;
        std::cin >> B;

        int n = A;
        while (n%3!=0) {
            n++;
        }
        int sum = 0, count = 0;
        while (n <= B) {
            std::cout << n << " ";
            sum += n;
            count++;
            n+=3;
        }
        const double avg = (double)sum/count;
        std::cout << std::endl << "average: " << avg << std::endl;

        bool flag = true;
        char start_char;
        while (flag) {
            std::cout << "Start again Y/N" << std::endl;
            std::cin >> start_char;
            switch (start_char) {
                case 'Y':
                    flag = false;
                    break;
                case 'N':
                    flag = false;
                    loop = false;
                    break;
                default:
                    std::cout << "invalid input" << std::endl;
                    flag = true;
                    break;
            }
        }
    }
}
