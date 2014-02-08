export BC_LINE_LENGTH=0

for a in `seq 2 100`; do
    for b in `seq 2 100`; do
        echo $a ^ $b | bc
    done
done | sort -u | wc -l
