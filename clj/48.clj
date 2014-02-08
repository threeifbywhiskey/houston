(println (str (mod (apply + (for [a (range 1M 1001)]
                              (.pow a a)))
                   10000000000)))
