# n.old     0 1 2 3 4 5 6 7 8 9 a b c d
# str[i]=0  0 5 1 2 6 4 3 2 3 4 1 0 0 0
# str[i]=1  2 3 4 1 0 0 0

one = {0: 2, 1: 3, 2: 4, 3: 1, 4: 0, 5: 0, 6: 0}
zero = {0: 0, 1: 5, 2: 1, 3: 2, 4: 6, 5: 4, 6: 3}

def fsm(n):
    # convert n to its binary representation
    ops = bin(n)[2:]

    def apply(state, ops):
        for op in ops:
            if op == "1":
                state = one[state]
            else:
                state = zero[state]
        return state
    
    s0 = apply(0, ops)
    for i in range(1, 7):
        if apply(i, ops) != s0:
            return False
    return True

def main():
    for i in range(0, 8192):
        if fsm(i):
            print(bin(i)[2:])

main()

# 1001000101101
# 1001100110001
# 1011011011001



def func4(x, y, z):
    t = (y + z) // 2
    if t > x:
        t += func4(x, y, t - 1)
    elif t < x:
        t += func4(x, t + 1, z)
    return t


def tellMeAnswer():
    for i in range(0, 15):
        if func4(i, 0, 14) == 35:
            print(i)


# tellMeAnswer()
