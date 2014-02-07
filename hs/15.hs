fact n = foldl1 (*) [2..n]

main = print $ fact (n * 2) `div` (fact n * fact n)
    where n = 20
