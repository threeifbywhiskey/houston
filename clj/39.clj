(defn rights [p]
  (count (filter #(== 0 (mod (try
                               (/ (- (* p p) (* 2 p %)) (- (* 2 p) (* 2 %)))
                               (catch Exception e 0))
                             1))
                 (range 1 1001))))

(prn (first (apply max-key last
                   (map vector
                        (range 120 1001)
                        (map rights (range 120 1001))))))
