#include <iostream>
#include <ranges>
#include <map>

std::map<int, int> zero = {{0, 0}, {1, 5}, {2, 1}, {3, 2}, {4, 6}, {5, 4}, {6, 3}};
std::map<int, int> one = {{0, 2}, {1, 3}, {2, 4}, {3, 1}, {4, 0}, {5, 0}, {6, 0}};

bool fsm(int n) {
    int state = 0;
    for (auto i : std::views::iota(0, n)) {
        if (i % 2 == 0) {
            state = zero[state];
        } else {
            state = one[state];
        }
    }
    return state == 0;
}