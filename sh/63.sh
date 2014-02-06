ns=0

for a in `seq 9`; do
    for b in `seq 25`; do
        pow=`echo $a ^ $b | bc`
        [ `echo -n $pow | wc -c` -eq $b ] && ns=$((ns + 1))
    done
done

echo $ns
