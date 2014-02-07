(defn fact [n]
  (apply * (range 2N (+ n 1))))

(let [n 20]
  (prn (/ (fact (* 2 n)) (* (fact n) (fact n)))))
