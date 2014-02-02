def prime_factors(n):
    factors = []

    if n % 2 == 0:
        while n % 2 == 0:
            factors.append(2)
            n /= 2

    p = 3
    while n > 1:
        if n % p == 0:
            while n % p == 0:
                factors.append(p)
                n /= p
        p += 2

    return factors

def divisors(n):
    pf = prime_factors(n)
    return reduce(lambda a, b: a * b, map(lambda f: pf.count(f) + 1, set(pf)), 1)

n, p = 1, 1
while divisors(n) < 500:
    p += 1
    n += p

print n
