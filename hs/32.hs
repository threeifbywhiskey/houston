import Data.List (nub, sort)

pandigital args = digits == "123456789"
    where digits = sort $ foldl1 (++) $ map show args

prods' = [a * b | a <- [1..9], b <- [1234..9876], pandigital [a, b, a * b]]
prods =  [a * b | a <- [12..98], b <- [123..987], pandigital [a, b, a * b]]

main = print $ foldl1 (+) $ nub $ prods' ++ prods
