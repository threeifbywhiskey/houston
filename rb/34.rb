def factorial n
  n < 2 ? 1 : (2..n).reduce(:*)
end

def facsum n
  n.to_s.chars.map { |c| factorial c.to_i }.reduce(:+)
end

p (3..42000).select { |n| facsum(n) == n }.reduce(:+)
