import Data.Char (ord)

digsum = foldl (+) 0 . map (\c -> ord c - 48) . show

main = print $ digsum $ foldl1 (*) [2..100]
