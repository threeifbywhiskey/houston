main = do
    input <- readFile "../input/11"
    let nums = map (\n -> read n :: Int) $ foldl1 (++) $ map words $ lines input
    print $ maximum [foldl1 (*) $ map (nums !!)
          $ map (`mod` 400) [i,i+j..i+j*3]
          | i <- [0..399], j <- [1,19,20,21]]
