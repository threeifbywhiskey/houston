import Data.List (find, sort)
import Data.Maybe (fromJust)

mults n = map (* n) [2..6]

sorted :: Int -> Int
sorted = read . sort . show

solution n = all (== sorted n) $ map sorted $ mults n

main = print $ fromJust $ find solution [100000..]
