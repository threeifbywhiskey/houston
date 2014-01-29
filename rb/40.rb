x = 0
d = ''

d << (x += 1).to_s until d.size > 1e6

p (0..6).map { |i| d[10 ** i - 1].to_i }.reduce(:*)
