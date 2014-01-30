def fact n
  return 1 if n < 2
  (2..n).reduce(:*)
end

total = 0

(1..100).each do |n|
  (1..n).each do |r|
    denom = fact(r) * fact(n - r)
    total += 1 if fact(n) / denom > 1e6
  end
end

p total
