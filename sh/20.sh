export BC_LINE_LENGTH=0
seq 100 | paste -sd '*' | bc | sed 's/\B/\n/g' | paste -sd '+' | bc
