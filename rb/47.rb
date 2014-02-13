def pf n
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

  factors.uniq.size
end

i = 3
while (i += 4)
  break if pf(i) == 4 && pf(i + 1) == 4 && pf(i + 2) == 4 && pf(i + 3) == 4
end

p i
