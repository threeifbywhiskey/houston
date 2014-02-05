sumsq=`seq 100 | paste -sd + | sed 's/\([0-9]\+\)/\1*\1/g' | bc`
  sum=`seq 100 | paste -sd + | bc`

echo $((sum * sum - sumsq))
