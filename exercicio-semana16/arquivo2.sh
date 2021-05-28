#!/bin/bash

read -p "Digite o nome do arquivo: " arq
declare -A array

if [ -f $arq ];then
	while read line; do
		valor=${line//* /}
		key=${line// */}
		encontrou=0
		if [ ${#array[*]} -eq 0 ];then
			array[$key]=$valor
		else
			for i in ${!array[*]};do
				if [[ $i == $key ]];then
					total=$(bc <<< "${array[$i]} + $valor")
					array[$key]=$total
					encontrou=1
					break
				fi
	
			done
			if [ $encontrou -eq 0 ];then
				array[$key]=$valor
			fi
		fi

	done < $arq


	for i in ${!array[*]};do
		echo "Nome = $i - Valor = ${array[$i]}"
	done
else
	echo "Arquivo não existe"
fi


