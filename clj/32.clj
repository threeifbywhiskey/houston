(defn pandigital [& args]
  (= (range 1 10)
     (sort (map #(Integer/parseInt %)
                (re-seq #"\d"
                        (apply str (map str args)))))))

(def one-four
  (filter pandigital
          (for [a (range 1 10)
                b (range 1234 9877)]
            (list a b (* a b)))))

(def two-three
  (filter pandigital
          (for [a (range 12 99)
                b (range 123 988)]
            (list a b (* a b)))))

(prn (apply + (set (map last (concat one-four two-three)))))
