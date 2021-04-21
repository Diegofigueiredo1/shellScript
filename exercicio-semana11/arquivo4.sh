#!/bin/bash

a=$1
$(echo $a | tr '.' '\n' > teste.txt)
count=1 
for i in $(cat teste.txt)
do
	echo "Octeto #$count: ${i} em binário: " >> arquivo1.txt
	echo "obase=2; ${i}" | bc > bin.txt
	b=$(wc -c bin.txt | cut -c1)
	b1=$(echo "obase=2; ${i}" | bc)
	case $b in
		9)
			echo $b1 >> arquivo2.txt
			;;
		8)
			a1='0'
			t=$a1$b1
			echo ${t} >> arquivo2.txt
			;;
		7)
			a1='00'
			t=$a1$b1
			echo ${t} >> arquivo2.txt
			;;
		6)
			a1='000'
			t=$a1$b1
			echo ${t} >> arquivo2.txt
			;;
		5)
			a1='0000'
			t=$a1$b1
			echo ${t} >> arquivo2.txt
			;;
		4)
			a1='00000'
			t=$a1$b1
			echo ${t} >> arquivo2.txt
			;;
		3)
			a1='000000'
			t=$a1$b1
			echo ${t} >> arquivo2.txt
			;;
		2)
			a1='0000000'
			t=$a1$b1
			echo ${t} >> arquivo2.txt
			;;
			
	esac
	count=$(($count + 1))
done

paste arquivo1.txt arquivo2.txt


