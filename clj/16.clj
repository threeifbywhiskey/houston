(defn digsum [n]
  (apply +
         (map #(- (int (first %)) 48)
              (re-seq #"\d" (str n)))))

(prn (digsum (.pow 2M 1000)))
