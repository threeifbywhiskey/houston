(defn digsum [n]
  (apply +
         (map #(- (int (first %)) 48)
              (re-seq #"\d" (str n)))))

(prn (apply max
            (map digsum
                 (for [x (range 90M 100)
                       y (range 90 100)]
                   (.pow x y)))))
