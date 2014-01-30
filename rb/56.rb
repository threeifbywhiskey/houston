def digsum n
  n.to_s.chars.map(&:to_i).reduce(:+)
end

p (ns = [*90..99]).product(ns).map { |a, b| digsum(a ** b) }.max
