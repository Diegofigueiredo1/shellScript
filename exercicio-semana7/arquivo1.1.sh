#!/bin/bash

a=$1 b=$2

for i in $(seq ${a} ${b})
do
	((${i} % 2 == 0)) && c=${i} && echo ${c}
done

