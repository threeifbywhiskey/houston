def divsum(n):
    return reduce(lambda a, b: a + b,
           filter(lambda m: n % m == 0, xrange(1, n / 2 + 1)), 0)

sum = 0

for i in xrange(2, 10001):
    ds = divsum(i)
    if i == divsum(ds) and i != ds:
        sum += i

print sum
