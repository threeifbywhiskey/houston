from re import findall

def value(name):
    return reduce(lambda a, b: a + b,
           map(lambda c: ord(c) - 64, list(name)))

with open('../input/22') as f:
    names = sorted(findall('\w+', f.read()))
    print sum(value(names[i]) * (i + 1) for i in xrange(len(names)))
