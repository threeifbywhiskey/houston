for a in xrange(5, 1000, 5):
    done = False

    for b in xrange(5, 1000 - a, 5):
        c = 1000 - a -b
        if a * a + b * b == c * c:
            print a * b * c
            done = True

    if done:
        break
