(defn sumsq [n]
  (apply + (map #(* % %) (range 1 (+ 1 n)))))

(defn sqsum [n]
  (#(* % %) (apply + (range 1 (+ 1 n)))))

(prn (- (sqsum 100) (sumsq 100)))
