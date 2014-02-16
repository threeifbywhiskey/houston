(def nums (map #(read-string (apply str "[" % "]"))
               (re-seq #"\S+" (slurp "../input/99"))))

(def zipped (zipmap (range 1 1001) nums))

(prn (first
       (apply max-key
              #(* (Math/log (first (second %)))
                  (second (second %)))
              zipped)))
