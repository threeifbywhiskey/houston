ns = 0

for a in xrange(1, 10):
    for b in xrange(1, 25):
        ns += len(str(a ** b)) == b

print ns
