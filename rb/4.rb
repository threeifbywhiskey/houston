cands = [*900..999]
cands = cands.product(cands).map { |a, b| a * b }
p cands.select { |c| c.to_s == c.to_s.reverse }.max
