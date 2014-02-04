(defn mults [n]
  (map #(* n %) (range 2 7)))

(defn sort-num [n]
  (Integer/parseInt
    (apply str (sort (re-seq #"\d" (str n))))))

(defn solution [n]
  (= #{true}
     (set (map #(= (sort-num n) (sort-num %)) (mults n)))))

(prn (first (filter solution (range 100000 200000))))
