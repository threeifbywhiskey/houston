(defn prime? [n]
  (cond
    (= 2 n) true
    (even? n) false
    :else (every? #(not= 0 (mod n %)) (range 3 (Math/sqrt n) 2))))

(defn same_digits? [a b]
  (= (sort (apply list (str a))) (sort (apply list (str b)))))

(loop [n 1488]
  (let [o (+ n 3330)
        p (+ n 6660)]
  (if (and (prime? n) (prime? o) (prime? p)
           (same_digits? n o) (same_digits? o p))
    (do (pr n) (pr o) (pr p))
    (recur (+ n 1)))))
