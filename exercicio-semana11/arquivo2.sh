#!/bin/bash

a=$1

if [ -f ${a} ]; then
	cat ${a} | tr -s '\n' '\n' >  arquivofinal.txt
	cat arquivofinal.txt
else
	echo "Erro: arquivo não existe"
fi

