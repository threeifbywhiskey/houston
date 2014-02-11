(def ones [0 3 3 5 4 4 3 5 5 4 3 6 6 8 8 7 7 9 8 8])
(def tens [0 3 6 6 5 5 5 7 6 6])

(defn letters [n]
  (cond
    (< n 20) (nth ones n)
    (and (= 0 (mod n 10)) (< n 100)) (nth tens (/ n 10))
    (< n 100) (+ (nth tens (/ n 10))
                 (nth ones (mod n 10)))
    :else (+ (nth ones (/ n 100))
             (if (= 0 (mod n 100)) 7 10)
             (letters (mod n 100)))))

(prn (inc (apply + (map letters (range 1 1001)))))
