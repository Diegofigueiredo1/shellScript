#!/bin/bash

while true; do
	read -p "Digite a senha: " senha
	echo $senha | grep -E '\b[A-Z]+[a-z]+[0-9]+|[A-Z]+[0-9]+[a-z]+|[a-z]+[A-Z]+[0-9]+|[a-z]+[0-9]+[A-Z]+|[0-9]+[a-z]+[A-Z]+|[0-9]+[A-Z]+[a-z]+\b' &> /dev/null
	if [ $? -eq 0 ]; then
		echo 'Senha correta seja bem vindo!'
		break
	else
		echo 'Senha não confirmada, por favor digite sua senha corretamente!'
	fi
done
