#!/bin/bash

read -p "Nome do arquivo: " arq
if [ -f $arq ];then
	menor=0
	opcao=""
	while read linha;do
		a=${#linha}
		if [ $menor -eq 0 ];then
			menor=$a
			opcao=${linha}
		else
			if [ $menor -gt $a ];then
				menor=$a
				opcao=${linha}
			fi
		fi
	done < $arq
	echo "-=-=-=-=-=-=-=-=-=-=-=-="
	echo "Arquivo: $arq"
	cat $arq
	echo "-=-=-=-=-=-=-=-=-=-=-=-="
	echo ""
	echo "Menor nome encontrado: $opcao"
else
	echo "Arquivo não existe"
fi
