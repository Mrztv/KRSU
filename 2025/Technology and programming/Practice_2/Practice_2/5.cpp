#include <iostream>

int main() {
    double balance = 100.0;
    bool loop = true;
    while (loop) {
        std::cout << "Choose what do you wanna do" << std::endl;
        std::cout << "1. Show balance" << std::endl;
        std::cout << "2. Deposit money" << std::endl;
        std::cout << "3. Withdraw money" << std::endl;
        int input;
        std::cin >> input;
        switch (input) {
            case 1:
                std::cout << "Your balance: " << balance << std::endl;
                break;
            case 2:
                double deposit;
                std::cout << "Input what count you want to deposit:" << std::endl;
                std::cin >> deposit;
                balance += deposit;
                std::cout << "Success\nYour balance: " << balance << std::endl;
                break;
            case 3:
                double withdraw;
                std::cout << "Input what count you want to withdraw:" << std::endl;
                std::cin >> withdraw;
                if (balance < withdraw) {
                    std::cout << "Your balance is less than you want to withdraw" << std::endl;
                }
                else {
                    balance -= withdraw;
                    std::cout << "Success\nYour balance: " << balance << std::endl;
                }
                break;
            default:
                std::cout << "Wrong input";
                break;
        }

        bool flag = true;
        char continue_char;
        while (flag) {
            std::cout << "Continue?(Y/N)" << std::endl;
            std::cin >> continue_char;
            switch (continue_char) {
                case 'Y':
                    flag = false;
                    break;
                case 'N':
                    flag = false;
                    loop = false;
                    break;
                default:
                    flag = true;
                    break;
            }
        }
    }
}