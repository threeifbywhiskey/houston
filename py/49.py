from math import sqrt

def prime(n):
    if n % 2 == 0:
        return False

    for i in range(3, int(sqrt(n)) + 1):
        if n != i and n % i == 0:
            return False

    return True

def same_digits(ns):
    return len(set(map(lambda n: ''.join(sorted(list(str(n)))), ns))) == 1

def solution(n):
    ns = [n, n + 3330, n + 6660]
    return all(map(prime, ns)) and same_digits(ns)

sol = next(n for n in xrange(1488, 3000) if solution(n))
print '%d%d%d' % (sol, sol + 3330, sol + 6660)
