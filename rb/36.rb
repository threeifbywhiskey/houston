def palin n, base
  s = n.to_s base
  s == s.reverse
end

p (1..1000000).select { |n| palin(n, 10) && palin(n, 2) }.reduce(:+)
