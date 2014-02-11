import Data.List (find)
import Data.Maybe (fromJust)

main = print $ length $ takeWhile (\n -> (length $ show n) < 1000) fibs
    where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
