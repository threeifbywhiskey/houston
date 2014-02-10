max=0 line=0

for nums in `cat input/99`; do
    i=$((i + 1))
    a=`echo $nums | cut -d, -f1`
    b=`echo $nums | cut -d, -f2`
    prod=`echo "l($a) * $b" | bc -l`
    [ `echo "$prod > $max" | bc -l` -eq 1 ] && max=$prod && line=$i
done

echo $line
