divsum n = foldl (+) 0 $ init $ filter (\m -> mod n m == 0) [1..n]

solution n = n == divsum(ds) && n /= ds
    where ds = divsum(n)

main = print $ foldl1 (+) $ filter solution [2..10000]
