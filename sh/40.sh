#!/usr/bin/env bash

num=`seq 200000 | paste -sd ''`

for i in {0..6}; do
    n=`echo 10 ^ $i - 1 | bc`
    echo ${num:n:1}
done | paste -sd '*' | bc
