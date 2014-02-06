import Data.Char (ord)
import Data.List (sort)

value = foldl1 (+) . map (\c -> ord c - 64)

main = do
    input <- readFile "../input/22"
    let names = sort (read ("[" ++ input ++ "]") :: [String])
    print $ foldl1 (+) $ zipWith (*) [1..length names] $ map value names
