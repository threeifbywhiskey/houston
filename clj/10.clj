(defn prime? [n]
  (cond
    (= 2 n) true
    (even? n) false
    :else (every? #(not= 0 (mod n %)) (range 3 (inc (Math/sqrt n)) 2))))

(prn (apply + (filter prime? (range 2 2000000))))
