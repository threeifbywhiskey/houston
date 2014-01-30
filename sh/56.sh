export BC_LINE_LENGTH=0
for a in `seq 90 99`; do
    for b in `seq 90 99`; do
        digsum=`echo $a ^ $b | bc | sed 's/\B/\n/g' | paste -sd + | bc`
        echo $digsum
    done
done | sort | tail -n 1
