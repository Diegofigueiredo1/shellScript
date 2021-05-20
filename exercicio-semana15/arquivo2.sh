#!/bin/bash


read -p "Nome do arquivo: " arq
source arquivo1.sh
if [ -f $arq ];then
	echo "Valores do arquivo $arq: Maior = $(maior $(cat $arq | tr -s ' ' '\n')) : Menor = $(menor $(cat $arq | tr -s ' ' '\n'))" 
else
	echo "Arquivo não existe"
fi
