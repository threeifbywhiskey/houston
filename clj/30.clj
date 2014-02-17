(defn solution [n]
  (== n (apply + (map #(Math/pow (Integer/parseInt %) 5) (re-seq #"\d" (str n))))))

(prn (apply + (filter solution (range 2 200000))))
