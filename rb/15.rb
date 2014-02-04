def fact n
  n < 2 ? 1 : (2..n).reduce(:*)
end

n = 20
p fact(2 * n) / fact(n) ** 2
