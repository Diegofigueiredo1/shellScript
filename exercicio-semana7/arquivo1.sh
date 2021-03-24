#!/bin/bash

for i in $(seq 1 101)
do	
	(( ${i} % 2 == 0 )) && b=${i} && echo ${b}

done

