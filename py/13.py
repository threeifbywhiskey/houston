with open('../input/13') as f:
    print str(reduce(lambda a, b: a + b, map(int, f.readlines())))[0:10]
