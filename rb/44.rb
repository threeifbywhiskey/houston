pents = {}
n, a = 1, 1

2400.times { pents[n += a += 3] = 1 }

ns = pents.keys
pairs = ns.product(ns).select { |a, b| pents[a + b] && pents[(a - b).abs] }
p pairs[1].reduce(:-)
