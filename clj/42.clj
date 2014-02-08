(defn triangular? [n]
  (== 0 (mod (Math/sqrt (inc (* 8 n))) 1)))

(defn value [word]
  (apply + (map #(- (int %) 64) word)))

(def words (read-string
             (str "[" (slurp "../input/42") "]")))

(prn (count (filter #(triangular? (value %)) words)))
