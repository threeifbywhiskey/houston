import Data.List (find, nub)
import Data.Maybe (fromJust)

pf' f i n | n == 1 = f
          | even n = pf' (2 : f) i (div n 2)
          | mod n i == 0 = pf' (i : f) i (div n i)
          | True = pf' f (i + 2) n

pf = pf' [] 3

dpf = length . nub . pf

solution n = all (== 4) $ map dpf [n..n + 3]

main = print $ fromJust $ find solution [1,3..]
