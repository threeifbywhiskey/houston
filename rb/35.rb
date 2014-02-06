require 'prime'

def circular? n
  return false unless n.prime?
  s = *n.to_s.chars
  (1..s.size.pred).all? { |i| s.rotate(i).join.to_i.prime? }
end

p (1..1e6).select { |n| circular? n }.size
