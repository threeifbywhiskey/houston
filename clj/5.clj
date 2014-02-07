(defn solution [n]
  (every? zero? (map #(mod n %) [11 13 14 17 19 20])))

(prn (first (filter solution (range 5040 (/ 1 0.0) 5040))))
