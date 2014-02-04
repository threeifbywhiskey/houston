require 'prime'

def truncatable? n
  return false unless n.prime?

  (1..(s = n.to_s).size.pred)
    .map { |i| [s[-i, i], s[0, i]] }
    .flatten.all? { |n| n.to_i.prime? }
end

p (11..750000).select { |n| truncatable? n }.reduce(:+)
