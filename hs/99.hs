import Data.List (maximumBy)
import Data.Ord (comparing)

logab n = (log (fst (snd n))) * (snd (snd n))

main = do
    input <- readFile "../input/99"
    let nums = map (\l -> read ("(" ++ l ++ ")") :: (Float, Float)) $ lines input
    print $ fst $ maximumBy (comparing logab) $ zip [1..] nums
