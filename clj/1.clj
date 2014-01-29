(prn (apply + (filter #(= 0 (* (mod % 3) (mod % 5))) (range 1000))))
