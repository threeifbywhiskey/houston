import Data.Char (ord)

sos = sum . map (\c -> (ord c - 48) * (ord c - 48)) . show

arrive89  1 = False
arrive89 89 = True
arrive89  n = arrive89 (sos n)

main = print $ length $ filter arrive89 [1..10000000]
