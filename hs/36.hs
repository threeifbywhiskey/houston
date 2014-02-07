import Data.Char (intToDigit)
import Numeric (showIntAtBase)

palin base n = s == reverse s
    where s = showIntAtBase base intToDigit n ""

main = print $ foldl1 (+) $ filter (\n -> palin 10 n && palin 2 n) [1..1000000]
