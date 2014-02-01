main = do
    input <- readFile "../input/13"
    putStrLn $ take 10 $ show $ foldl1 (+) $ map read $ lines input
