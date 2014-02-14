def pandigital(n, m, p):
    str = '%d%d%d' % (n, m, p)
    if str.count('0') > 0:
        return False
    return ''.join(sorted(list(str))) == '123456789'

prods = []

for i in xrange(12, 99):
    for j in xrange(123, 988):
        if pandigital(i, j, i * j):
            prods.append(i * j)

for i in xrange(1, 10):
    for j in xrange(1234, 9877):
        if pandigital(i, j, i * j):
            prods.append(i * j)

print reduce(lambda a, b: a + b, set(prods))
