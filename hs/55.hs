palindromic n = s == reverse s where s = show n

revsum n = n + read (reverse $ show n) :: Integer

lychrel' i n | i == 50 = True
             | palindromic n && i > 0 = False
             | otherwise = lychrel' (i + 1) (revsum n)

lychrel = lychrel' 0

main = print $ length $ filter lychrel [1..9999]
