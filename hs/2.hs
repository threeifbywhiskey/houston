main = print . foldl (+) 0 $ filter even $ takeWhile (< 4000000) fibs
    where fibs = 0 : scanl (+) 1 fibs
