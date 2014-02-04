def bit(n, b):
    e = 1
    for i in xrange(b):
        e *= 2
    return 1 if n & e else 0

with open("../input/18") as f:
    nums = map(lambda l: map(int, l.split(' ')), f.read().split("\n")[:-1])
    max = 0

    for i in xrange(16384):
        n = 0
        sum = nums[0][0]
        for j in xrange(14):
            n += bit(i, j)
            sum += nums[j + 1][n]
        if sum > max:
            max = sum

print max
