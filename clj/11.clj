(def nums
  (map #(Integer/parseInt %) (re-seq #"\d+" (slurp "../input/11"))))

(prn
  (apply max
         (for [i (range 400)
               j [1 19 20 21]]
           (apply * (map #(nth nums (mod (+ i (* j %)) 400)) (range 4))))))
