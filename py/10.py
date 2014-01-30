from math import sqrt

def prime(n):
    if n % 2 == 0:
        return False

    for i in range(3, int(sqrt(n)) + 1):
        if n != i and n % i == 0:
            return False

    return True

sum = 0

for i in xrange(3, 2000000, 2):
    if prime(i):
        sum += i

print sum + 2
