#!/bin/bash

itens=$(ls -F | grep -v '/')

for i in ${itens}
do
	echo $( wc -l ${i}) >> teste.txt
done


for x in $(cat teste.txt | sort -gr)
do
	echo ${x} 

done

