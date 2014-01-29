(prn (apply +
  (map #(-  (int  (first %)) 48)
    (re-seq #"\d" (str (apply * (range 2N 100)))))))
