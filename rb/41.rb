require 'prime'

def pandigital? n
  s = n.to_s
  (1..s.size).all? { |c| s["#{c}"] }
end

n = 10000000
break if pandigital?(n) && n.prime? while (n -= 1)
p n
