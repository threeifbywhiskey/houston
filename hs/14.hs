import Data.List (maximumBy)
import Data.Ord (comparing)

collatz n = n : w
    where w | n == 1 = []
            | even n = collatz $ quot n 2
            | odd  n = collatz (n * 3 + 1)

main = print $ fst $ maximumBy (comparing $ length . snd) $
               take 1000000 $ zip [1..] $ map collatz [1..]
