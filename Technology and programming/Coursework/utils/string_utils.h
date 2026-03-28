//
// Created by timur on 07.03.2026.
//

#ifndef COURSEWORK_STRING_UTILS_H
#define COURSEWORK_STRING_UTILS_H
#include <string>

// bool is_space(char c);
//
// string trim(string str);

inline bool is_space(char c) {
    return c == ' ' || c == '\t' || c == '\n' || c == '\r';
}

inline std::string to_lower(std::string result) {
    for (int i = 0; i < result.length(); i++) {
        if (result[i] >= 'A' && result[i] <= 'Z') {
            result[i] = result[i] + 32;
        }
    }
    return result;
}

inline std::string trim(std::string str) {
    std::string result = str;
    for (int i = 0; i < result.length(); i++) {
        if (result[i] == '"') {
            do {
                i++;
            } while (result[i] != '"');
        }
        if (is_space(result[i])) {
            result.erase(i, 1);
            i--;
        }
    }


    return result;
}

#endif //COURSEWORK_STRING_UTILS_H