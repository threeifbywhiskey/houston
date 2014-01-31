import Data.Char (ord)

digsum = foldl (+) 0 . map (\c -> ord c - 48) . show

main = print $ maximum $ map digsum [x ^ y | x <- [90..99], y <- [90..99]]
