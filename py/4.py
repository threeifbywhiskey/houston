prods = [a * b for a in xrange(900, 999) for b in xrange(900, 999)]

print max(filter(lambda x: str(x) == str(x)[::-1], prods))
