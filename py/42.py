from math import sqrt
from re import findall

def value(word):
    return reduce(lambda a, b: a + b,
             map(lambda c: ord(c) - 64, list(word)))

def triangle(n):
    return sqrt(n * 8 + 1) % 1 == 0

with open('houston/input/42') as f:
    words = sorted(findall('\w+', f.read()))
    print len(filter(triangle, map(value, words)))
