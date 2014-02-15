fact n | n < 2 = 1
       | True  = product [2..n]

main = print $ length [1 | n <- [1..100], r <- [1..n], fact(n) / (fact(r) * fact(n - r))> 1e6]
