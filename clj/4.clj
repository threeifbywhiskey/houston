(defn palin? [n]
  (= (str n) (apply str (reverse (str n)))))

(prn
  (apply max
         (filter palin?
                 (for [x (range 900 1000)
                       y (range 900 1000)]
                   (* x y)))))
