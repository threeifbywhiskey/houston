(def n (atom 600851475143))
(def f (atom 1))

(while (not= 1 @n)
  (swap! f #(+ 2 %))
  (if (= 0 (mod @n @f))
    (swap! n #(/ % @f))))

(prn @f)
