def palin(n):
    s = str(n)
    b = bin(n)[2:]
    return s == s[::-1] and b == b[::-1]

print sum(filter(palin, xrange(1000000)))
