#!/bin/bash

while true; do
	read -p 'Digite seu e-mail: ' email
	echo $email | grep -E '[a-z0-9._%+-]+@[a-z]{5,7}\.[a-z]{2,4}$' &> /dev/null
	if [ $? -eq 0 ]; then
		echo "Seu e-mail: $email"
		break
	else
		echo 'Erro: Digite seu email corretamente!'
	fi
done

