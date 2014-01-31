import Data.Char (ord)

digsum = foldl (+) 0 . map (\c -> ord c - 48) . show

main = print $ digsum $ 2 ^ 1000
