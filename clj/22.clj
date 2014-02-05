(def names
  (sort (read-string (str "(" (slurp "../input/22") ")"))))

(defn value [name]
  (apply + (map #(- (int %) 64) name)))

(prn (apply +
            (for [n (range (count names))]
              (* (+ 1 n) (value (nth names n))))))
