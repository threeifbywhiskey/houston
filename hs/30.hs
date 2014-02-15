import Data.Char (ord)

digits = map (\c -> ord c - 48) . show

solution n = (foldl1 (+) $ map (^ 5) $ digits n) == n

main = print $ foldl1 (+) $ filter solution [2..200000]
