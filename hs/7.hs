fs = floor . sqrt . fromIntegral

prime n | n == 2    = True
        | even n    = False
        | otherwise = notElem 0 $ map (\m -> mod n m) [3,5..fs n]

main = print $ (filter prime [2..]) !! 10000
