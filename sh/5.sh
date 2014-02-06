n=5040

while true; do
    [ 0 -eq $((n % 11)) ] &&
    [ 0 -eq $((n % 13)) ] &&
    [ 0 -eq $((n % 14)) ] &&
    [ 0 -eq $((n % 17)) ] &&
    [ 0 -eq $((n % 19)) ] &&
    [ 0 -eq $((n % 20)) ] && break
    n=$((n + 5040))
done

echo $n
