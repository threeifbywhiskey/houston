import Data.Char (ord)

triangular n = foldl1 (+) [1..n]

triangles n = map triangular [1..n]

value = foldl1 (+) . map (\c -> ord c - 64)

main = do
    input <- readFile "../input/42"
    let words = (read ("[" ++ input ++ "]") :: [String])
    print $ length $ filter (\n -> elem n $ triangles 20) $ map value words
