(def n 1000)
(def sum (atom 1))
(def cur (atom 1))
(def add (atom 0))

(dotimes [_ (/ n 2)]
  (swap! add #(+ 2 %))
  (dotimes [_ 4]
    (swap! cur #(+ @add %))
    (swap! sum #(+ @cur %))))

(prn @sum)
