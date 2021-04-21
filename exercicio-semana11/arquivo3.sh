#!/bin/bash

a=$1

count=3
if [ -f ${a} ]; then
	b=$(wc -l ${a} | cut -c 1-2)
	cat ${a} | head -${count}
	while true; do
		read -p "More: " teste
		if [ -z ${teste} ]; then
			count=$((${count} + 3))
			cat ${a} | head -${count}
		if [ ${count} -ge ${b} ]; then
			break
		fi
		
		fi	

	done
else
	echo "Erro: arquivo não existe"
fi

