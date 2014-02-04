def solution(a, p):
    try:
        return ((p * p - 2 * p * a) / (2.0 * p - 2 * a)) % 1 == 0
    except ZeroDivisionError:
        return False

def rights(p):
    return len(filter(lambda a: solution(a, p), xrange(3, 1001)))

print max(xrange(120, 1000), key=rights)
