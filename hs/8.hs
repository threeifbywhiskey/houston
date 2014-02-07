import Data.Char (ord)

prod = foldl1 (*) . map (\c -> ord c - 48)

main = do
    input <- readFile "../input/8"
    let nums = foldl1 (++) $ lines input
        groups = map (\n -> take 5 $ drop n nums) [0..995]
    print $ maximum $ map prod groups
