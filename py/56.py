from itertools import product

def digsum(n):
    return reduce(lambda a, b: a + b, map(int, list(str(n))))

ns = xrange(90, 100)
ns = product(ns, ns)

print max(map(lambda n: digsum(n[0] ** n[1]), ns))
