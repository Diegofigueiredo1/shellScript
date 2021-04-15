#!/bin/bash

while true; do
	echo "$(date +%c)"
	sleep 2
	if test -f /tmp/chave.txt; then
		echo "Arquivo encontrado"
		break
	fi
done

