from math import log

with open('../input/99') as f:
    pairs = f.read().split('\n')[0:-1]
    pairs = map(lambda p: map(int, p.split(',')), pairs)
    pairs = map(lambda p: log(p[0]) * p[1], pairs)

    print pairs.index(max(pairs)) + 1
