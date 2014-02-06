(prn (count (filter true? (for [a (range 1M 10)
                                b (range 1 25)]
                            (= b (count (str (.pow a b))))))))
