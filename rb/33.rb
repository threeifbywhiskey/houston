def solution a, b
  return false unless a < b

  c   = a / 10 if a / 10 == b % 10
  c ||= b / 10 if b / 10 == a % 10

  return false unless c

  c  = c.to_s
  na = a.to_s.sub(c, '').to_f
  nb = b.to_s.sub(c, '').to_f
  na / nb == a / b.to_f
end

ns = [*11..99]
sols = ns.product(ns).select { |a, b| solution a, b }
p sols.map { |a, b| Rational a, b }.reduce(:*).denominator
