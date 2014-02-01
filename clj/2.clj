(defn fibs [a b]
  (cons a (lazy-seq (fibs b (+ b a)))))

(prn (apply + (filter even? (take-while #(< % 4e6) (fibs 1 1)))))
