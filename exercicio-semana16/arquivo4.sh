#!/bin/bash

read -p "Digite o nome do arquivo: " arq

if [ -f $arq ];then
	while read linha;do
		a=0
		cont=0
		opcao=""
		for i in ${linha};do
			a=$(($a +1 ))
		
		done

		for j in ${linha};do
			cont=$(($cont + 1))
			if [ $cont -eq 1 ];then
				opcao=$j
			else
				if [ $cont -lt $a ];then
					opcao="$opcao ${j:0:1}."
				else
					if [ $cont -eq $a ];then
						opcao="$opcao $j"
					fi
				fi
			fi
		done
		echo $opcao
	done <$arq
else
	echo "Arquivo não exsite"
fi
