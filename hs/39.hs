import Data.Fixed (mod')
import Data.List (maximumBy)
import Data.Ord (comparing)

rights p = filter (\a -> ((p * p - 2 * p * a) / (2 * p - 2 * a)) `mod'` 1 == 0) [1..1000]

main = print $ fst $ maximumBy (comparing (length . snd)) $
               zip [120..1000] $ map rights [120..1000]
