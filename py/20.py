print reduce(lambda a, b: a + b,
        map(int, list(str(reduce(lambda a, b: a * b, xrange(2, 100))))))
