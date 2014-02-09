(defn collatz [n]
  (if (= 1 n) '(1)
    (cons n (collatz (if (even? n)
                       (/ n 2)
                       (inc (* 3 n)))))))

(prn (first
       (apply max-key (comp count last)
              (map vector
                   (range 800000 1000000)
                   (map collatz (range 800000 1000000))))))
