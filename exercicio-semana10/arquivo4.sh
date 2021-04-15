#!/bin/bash

while read a; do
	ping -c 1 $a &> /dev/null
	if (( $? > 0)); then
		echo $a >> erro.txt
	fi
done < ips.txt

if [ -f erro.txt ]; then
	a=$(wc -l erro.txt | cut -c 1)
else
	a=0
fi

if [ $a -gt 0 ]; then
	echo "Ips que o ping falhou"
	cat erro.txt
else
	echo "Sucesso em todos os ips"
fi




