def fact(n):
    return 1 if n < 2 else n * fact(n - 1)

n = 20
print fact(2 * n) / fact(n) ** 2
