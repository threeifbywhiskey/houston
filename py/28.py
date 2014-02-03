n = 1000
total, current, add = 1, 1, 0

for _ in xrange(n / 2):
    add += 2
    for _ in xrange(4):
        current += add
        total += current

print total
