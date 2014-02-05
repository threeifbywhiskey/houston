from math import sqrt

def prime(n):
    n = -n if n < 0 else n

    if n % 2 == 0:
        return False

    for i in range(3, int(sqrt(n)) + 1):
        if n != i and n % i == 0:
            return False

    return True

max, maxprod = 0, 0

for a in xrange(-999, 1000):
    for b in xrange(-999, 1000):
        n = 0
        while prime(n * n + a * n + b):
            n += 1
        if n > max:
            max = n
            maxprod = a * b

print maxprod
