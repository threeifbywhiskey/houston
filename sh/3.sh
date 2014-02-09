n=600851475143 f=1

while [ $n -ne 1 ]; do
    f=$((f + 2))
    if [ `echo $n % $f | bc` -eq 0 ]; then
        n=`echo $n / $f | bc`
    fi
done

echo $f
