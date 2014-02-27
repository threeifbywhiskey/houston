from math import sqrt

def prime(n):
    if n % 2 == 0:
        return False

    for i in range(3, int(sqrt(n)) + 1):
        if n != i and n % i == 0:
            return False

    return True

def rotate(n, r):
    s = str(n)
    return int(s[r:] + s[:r])

def circular(n):
    return all(map(prime, [rotate(n, r) for r in range(len(str(n)))]))

print len(filter(circular, range(1000000)))
