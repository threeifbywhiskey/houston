for a in `seq 900 999`; do
    for b in `seq 900 999`; do
        echo $((a * b))
    done
done | grep -P "(\d)(\d)(\d)\3\2\1" | sort | tail -n 1
