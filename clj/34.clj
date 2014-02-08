(defn fact [n]
  (apply * (range 2 (inc n))))

(defn facsum [n]
  (apply + (map #(fact (Integer/parseInt %)) (re-seq #"\d" (str n)))))

(prn (apply + (filter #(= % (facsum %)) (range 3 42000))))
