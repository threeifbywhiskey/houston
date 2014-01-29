from math import sqrt

def prime(n):
    if n == 1:
        return False
    if n == 2:
        return True

    cands = [2] + range(3, int(sqrt(n)) + 1)
    return all(map(lambda m: n % m, cands))

count = 0

for i in xrange(105000):
    if prime(i):
        count += 1
    if (count == 10001):
        print i
        break
