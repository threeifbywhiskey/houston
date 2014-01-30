for i in `seq 999`; do
    mod=`echo "$i % 3 * $i % 5" | bc`
    [ $mod = 0 ] && echo $i
done | paste -sd + | bc
