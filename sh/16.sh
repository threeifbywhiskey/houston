export BC_LINE_LENGTH=0
echo 2 ^ 1000 | bc | sed 's/\B/\n/g' | paste -sd + | bc
