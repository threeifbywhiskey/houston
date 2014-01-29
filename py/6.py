n = 100
sqsum = (n / 2 * (n + 1)) ** 2
sumsq = 1

for n in xrange(2, 100):
    sumsq += n * n

print sqsum - sumsq
