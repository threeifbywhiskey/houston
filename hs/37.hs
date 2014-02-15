trunc n f i = read (f i $ show n) :: Int

fs = floor . sqrt . fromIntegral

prime n | n == 1    = False
        | n == 2    = True
        | even n    = False
        | otherwise = notElem 0 $ map (\m -> mod n m) [3,5..fs n]

trunc_prime f n = all prime $ map (\i -> trunc n f i) [1..(length $ show n) - 1]

ltr_prime = trunc_prime drop
rtl_prime = trunc_prime take

solution n | not (prime n) = False
           | otherwise = ltr_prime n && rtl_prime n

main = print $ foldl1 (+) $ filter solution [11..750000]
