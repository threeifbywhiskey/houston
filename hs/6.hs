sumsq n = foldl1 (+) $ map (\m -> m * m) [1..n]

sqsum n = (\m -> m * m) $ foldl1 (+) [1..n]

main = print $ sqsum 100 - sumsq 100
