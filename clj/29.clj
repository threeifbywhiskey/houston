(prn (count (set (for [a (range 2M 101)
                       b (range 2M 101)]
                   (.pow a b)))))
