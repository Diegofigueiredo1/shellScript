#!/bin/bash

a=$1

if [ -f $a ];then
	echo 'Arquivo passado'
	cat $a
	echo 'Arquivo sem quebra de linhas vazias'
	cat $a | grep . > /tmp/arquivofinal
	cat /tmp/arquivofinal
else
	echo "Erro: Arquivo não existe"
fi

