(defn solution [n]
  (let [dec (str n)
        bin (Integer/toBinaryString n)]
    (and
      (= dec (apply str (reverse dec)))
      (= bin (apply str (reverse bin))))))

(prn (apply + (filter solution (range 1e6))))
