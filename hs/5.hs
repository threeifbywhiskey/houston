import Data.List (find)
import Data.Maybe (fromJust)

solution n = all (== 0) $ map (\m -> mod n m) [11,13,14,17,19,20]

main = print $ fromJust $ find solution [5040,10080..]
