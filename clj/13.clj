(println (apply str (take 10 (str (apply +
  (map bigint (re-seq #"\d+" (slurp "../input/13"))))))))

