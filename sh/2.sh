a=1
b=1
sum=0

while [ $b -lt 4000000 ]; do
    a=$((a + b))
    [ `expr $a % 2` -eq 0 ] && sum=$((sum + a))
    b=$((b + a))
    [ `expr $b % 2` -eq 0 ] && sum=$((sum + b))
done

echo $sum
