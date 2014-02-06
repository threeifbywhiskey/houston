main = print $ length [1 | a <- [1..9], b <- [1..25], (length $ show (a ^ b)) == b]
