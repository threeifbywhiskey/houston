def fact(n):
    return 1 if n < 2 else n * fact(n - 1)

total = 0

for n in xrange(1, 101):
    for r in xrange(1, n + 1):
        denom = fact(r) * fact(n - r)
        if fact(n) / denom > 1e6:
            total += 1

print total
