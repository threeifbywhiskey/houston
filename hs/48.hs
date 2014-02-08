main = print $ foldl1 (+) [x ^ x | x <- [1..1000]] `mod` 10000000000
