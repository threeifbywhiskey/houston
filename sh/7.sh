prime() {
    [ $1 -eq 2 ] && return 0
    [ 0 -eq $(($1 % 2)) ] && return 1

    for i in $(seq 3 2 `echo "sqrt($1)" | bc`); do
        [ 0 -eq $(($1 % $i)) ] && return 1
    done

    return 0
}

p=3 primes=1

while [ $primes -lt 10001 ]; do
    prime $p && primes=$((primes + 1))
    p=$((p + 2))
done

echo $p
