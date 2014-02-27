import Data.Char (ord)

plusrev n = n + (read . reverse . show) n

allodd = all odd . map (\c -> ord c - 48) . show

main = print $ length $ filter (allodd . plusrev) ns
    where ns = filter (\n -> mod n 10 /= 0) [1..1000000000]
