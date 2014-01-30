(defn digsum [n]
  (apply +
         (map #(- (int (first %)) 48)
              (re-seq #"\d" (str n)))))

(prn (digsum (apply * (range 2N 100))))
