n = 1000
total, current, add = 1, 1, 0

(n / 2).times do
  add += 2
  4.times { total += current += add }
end

p total
