import Data.List (find, nub)
import Data.Maybe (fromJust)

pf' f i n | n == 1 = f
          | even n = pf' (2 : f) i (div n 2)
          | mod n i == 0 = pf' (i : f) i (div n i)
          | True = pf' f (i + 2) n

pf = pf' [] 3

count l e = length $ filter (== e) l

divs n = foldl (*) 1 $ map (\f -> count a f + 1) (nub a)
    where a = pf n

tri = scanl (+) 1 [2..]

main = print $ fromJust $ find (\n -> divs n > 500) tri
