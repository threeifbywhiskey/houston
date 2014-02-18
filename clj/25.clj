(def fibs (atom '(1M 1)))

(while (< (count (str (first @fibs))) 1000)
  (swap! fibs
         #(into % (list (+ (first @fibs) (second @fibs))))))

(prn (count @fibs))
