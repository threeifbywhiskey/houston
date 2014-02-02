def prime_factors n
  factors = []

  if n % 2 == 0
    factors << 2
    factors << 2 while (n /= 2) % 2 == 0
  end

  p = 3
  while n > 1
    if n % p == 0
      factors << p
      factors << p while (n /= p) % p == 0
    end
    p += 2
  end

  factors
end

def divisors n
  pf = prime_factors n
  pf.uniq.map { |f| pf.count(f) + 1 }.reduce(1, :*)
end

n, p = 1, 1
n += (p += 1) until divisors(n) > 500
p n
