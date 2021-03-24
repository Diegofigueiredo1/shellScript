#!/bin/bash

a=$1

itens=$(ls -F ${a} | grep -v '/')

for i in ${itens}
do
	echo $( wc -l ${a}${i}) >> teste.txt
done


for x in $(cat teste.txt | sort -gr)
do
	echo ${x} 

done

