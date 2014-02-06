nums=`paste -sd '' ../input/8`

for i in `seq 996`; do
    prod=`echo $nums | cut -c $i`
    prod=$((prod * `echo $nums | cut -c $((i + 1))`))
    prod=$((prod * `echo $nums | cut -c $((i + 2))`))
    prod=$((prod * `echo $nums | cut -c $((i + 3))`))
    prod=$((prod * `echo $nums | cut -c $((i + 4))`))
    echo $prod
done | sort -n | tail -n 1
