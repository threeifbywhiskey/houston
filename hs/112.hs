import Data.List (sort)

bouncy n = s /= o && s /= reverse o
    where s = show n
          o = sort s

solve b n | div (b * 100) n == 99 = n
          | True = solve (b + if bouncy n then 1 else 0) (n + 1)

main = print $ solve 1 1
