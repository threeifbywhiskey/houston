from math import sqrt

def prime(n):
    if n < 3:
        return n - 1

    if n % 2 == 0:
        return False

    for i in xrange(3, int(sqrt(n) + 1), 2):
        if n % i == 0:
            return False

    return True

def truncatable(n):
    if not prime(n):
        return False

    dup, mag = n, 10
    while dup:
        dup /= 10
        if not prime(dup):
            return False

    dup = n
    while dup:
        dup /= 10
        mag *= 10

    while n:
        mag /= 10
        if not prime(n):
            return False
        n -= n / mag * mag

    return True

print reduce(lambda a, b: a + b,
        filter(truncatable, xrange(11, 750000)))
