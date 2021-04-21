#!/bin/bash

a=$1 b=$2

if [ -f ${a} ]; then
	count=$(wc -l ${a} | cut -c 1)
	if [ ${count} -lt ${b} ]; then
		echo "Falha: O arquivo ${a} possui apenas ${count} linhas"
	else
		cat ${a} | head -${b} | tail -1
	fi
else
	echo "Erro: arquivo não existe"

fi


