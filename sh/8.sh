nums=`paste -sd '' ../input/8`

for i in `seq 5 996`; do
    echo -n $nums | tail -c $i | head -c 5 |
    sed 's/\B/\n/g' | paste -sd '*' | bc
done | sort -n | tail -n 1
