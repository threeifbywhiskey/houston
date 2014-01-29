main = print $ foldl1 (+) [x | x <- [3..999], mod x 3 * mod x 5 == 0]
