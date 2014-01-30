def lychrel(n):
    for i in xrange(50):
        n += int(str(n)[::-1])
        if str(n) == str(n)[::-1]:
            return False

    return True

print len(filter(lychrel, xrange(10000)))
