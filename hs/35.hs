rotate n i = read (take (length s) $ drop i $ cycle s) :: Int
    where s = show n

fs = floor . sqrt . fromIntegral

prime n | even n    = False
        | otherwise = notElem 0 $ map (\m -> mod n m) [3,5..fs n]

solution n | not $ prime n = False
           | otherwise = all prime $
                 map (\i -> rotate n i) [1..(length $ show n) - 1]

main = print $ length $ filter solution [1..1000000]
