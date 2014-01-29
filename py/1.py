print reduce(lambda a, b: a + b,
        [x for x in xrange(1000) if x % 3 * x % 5 == 0])
