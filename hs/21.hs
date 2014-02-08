divsum n = foldl (+) 0 $ filter (\m -> mod n m == 0) [1..quot n 2]

solution n = n == divsum(ds) && n /= ds
    where ds = divsum(n)

main = print $ foldl1 (+) $ filter solution [2..10000]
