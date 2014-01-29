fib = [1, 1]

while fib[-1] < 4e6:
    fib.append(fib[-1] + fib[-2])

print reduce(lambda a, b: a + b,
        [f for f in fib if f % 2 == 0])
