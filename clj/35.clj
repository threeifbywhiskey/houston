(defn rotate [n i]
  (let [s (str n)]
    (Integer/parseInt (apply str (take (count s) (drop i (cycle s)))))))

(defn prime? [n]
  (cond
    (even? n) false
    :else (every? #(not= 0 (mod n %)) (range 3 (inc (Math/sqrt n)) 2))))

(defn solution? [n]
  (if (prime? n)
    (every? prime? (map #(rotate n %) (range 1 (count (str n)))))
    false))

(prn (count (filter solution? (range 1 1000000))))
