import Data.List (find, sort)
import Data.Maybe (fromJust)

fs = floor . sqrt . fromIntegral

prime n | n == 2    = True
        | even n    = False
        | otherwise = notElem 0 $ map (\m -> mod n m) [3,5..fs n]

samedigs a b = (sort $ show a) == (sort $ show b)

solution n = prime n && prime o && prime p && samedigs n o && samedigs o p
    where o = n + 3330
          p = n + 6660

main = do
    putStr $ show sol
    putStr $ show $ sol + 3330
    putStr $ show $ sol + 6660
    where sol = fromJust $ find solution [1488..]
