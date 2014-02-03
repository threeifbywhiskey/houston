def factorial(n):
    return 1 if n < 2 else reduce(lambda a, b: a * b,
                             xrange(2, n + 1))

def facsum(n):
    return reduce(lambda a, b: a + b,
             map(factorial, map(int, list(str(n)))))

print reduce(lambda a, b: a + b,
        filter(lambda n: facsum(n) == n,
          xrange(3, 42000)))
