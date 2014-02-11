(defn prime? [n]
  (cond
    (= 2 n) true
    (even? n) false
    :else (every? #(not= 0 (mod n %)) (range 3 (inc (Math/sqrt n)) 2))))

(prn (last (take 10001 (filter prime? (iterate inc 2)))))
