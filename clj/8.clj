(def nums
  (map #(Integer/parseInt %)
       (re-seq #"\d" (slurp "../input/8"))))

(prn (apply max
            (for [i (range 996)]
              (apply * (take 5 (drop i nums))))))
