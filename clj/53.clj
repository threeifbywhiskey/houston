(defn fact [n]
  (if (< n 2) 1
    (apply * (range 2M (inc n)))))

(prn (count (for [n (range 1 101)
                  r (range 1 (inc n))
                  :when (> (/ (fact n) (* (fact r) (fact (- n r)))) 1e6)]
              1)))
