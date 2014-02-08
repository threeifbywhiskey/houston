import Data.Char (ord)

fact n | n < 2 = 1 | True = product [2..n]

facsum n = foldl1 (+) $ map (fact . (\c -> ord c - 48)) $ show n

main = print $ foldl1 (+) $ filter (\n -> facsum n == n) [3..42000]
