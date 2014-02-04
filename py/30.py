def solution(n):
    return reduce(lambda a, b: a + b,
             map(lambda n: int(n) ** 5, list(str(n)))) == n

print reduce(lambda a, b: a + b,
        filter(solution, xrange(2, 200000)))
