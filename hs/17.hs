letters n | n < 20 = ones !! n
          | mod n 10 == 0 && n < 100 = tens !! (quot n 10)
          | n < 100 = tens !! (quot n 10) + ones !! (mod n 10)
          | True = ones !! (quot n 100) + (if mod n 100 == 0 then 7 else 10) + letters (mod n 100)
    where ones = [0,3,3,5,4,4,3,5,5,4,3,6,6,8,8,7,7,9,8,8]
          tens = [0,3,6,6,5,5,5,7,6,6]

main = print $ (foldl1 (+) $ map letters [1..1000]) + 1
