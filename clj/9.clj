(prn (first (for [a (range 5 1000 5)
                  b (range 5 (- 1000 a) 5)
                  c [(- 1000 a b)]
                  :when (and (= 1000 (+ a b c))
                             (= (* c c) (+ (* a a) (* b b))))]
              (* a b c))))
