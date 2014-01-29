def prime? n
  ([2] + [*3..Math.sqrt(n)]).map { |c| n % c }.all? { |m| m > 0 }
end

def same_digits? ns
  ns.map { |n| n.to_s.chars.sort }.uniq.size == 1
end

def solution? n
  ns = [n, n + 3330, n + 6660]
  return ns.all? { |n| prime? n } && same_digits?(ns) ? ns : nil
end

x = 1488
x += 1 until sol = solution?(x)

puts sol.join
