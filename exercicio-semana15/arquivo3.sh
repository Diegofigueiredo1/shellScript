#!/bin/bash


read -p "Digite o endereço IP: " opcao

function ping_test {
	ping -c 2 $1 &>/dev/null
	if [ $? -eq 0 ];then
		echo "OK"
	else
		echo "FALHA"
	fi

}
if [ -n "$opcao" ];then
	ping_test $opcao
else
	echo "Parâmetro não informado!"
fi
