(defn divsum [n]
  (apply + (filter #(= 0 (mod n %)) (range 1 (+ 1 (/ n 2))))))

(defn solution [n]
  (let [ds (divsum n)]
    (and (= n (divsum ds)) (not= n ds))))

(prn (apply + (filter solution (range 2 10000))))
