def solution(n):
    ns = map(lambda i: ''.join(sorted(list(str(n * i)))), range(1, 7))
    return len(set(ns)) == 1

print next(x for x in xrange(100000, 150000) if solution(x))
