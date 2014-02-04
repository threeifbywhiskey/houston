def solution n
  n.to_s.chars.map { |c| c.to_i ** 5 }.reduce(:+) == n
end

p (2..200000).select { |n| solution n }.reduce(:+)
