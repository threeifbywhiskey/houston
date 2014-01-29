export BC_LINE_LENGTH=0
for i in `seq 1000`; do echo $i ^ $i | bc; done | paste -sd + | bc | tail -c 11
