palindromic n = (reverse . show) n == show n

main = print $ maximum $ filter palindromic products
    where products = [x * y | x <- [900..999], y <- [900..999]]
