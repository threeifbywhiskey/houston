series = reduce(lambda a, b: a + b, map(lambda n: n ** n, xrange(1, 1001)))
print str(series)[-10:]
