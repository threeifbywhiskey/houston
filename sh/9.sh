for a in `seq 5 5 1000`; do
    for b in `seq 5 5 $((1000 - a))`; do
        c=$((1000 - a - b))
        [ $((a * a + b * b)) -eq $((c * c)) ] &&
            echo $((a * b * c)) && exit
    done
done
