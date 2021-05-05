#!/bin/bash

read -p "Informe o arquivo: " arquivo
if [ -f $arquivo ];then
	for i in $*
	do
		case $i in
			a)
				echo "Removendo letras do arquivo"
				sed -E -e 's/[A-Za-z]//g' $arquivo 
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				;;
			b)
				echo "Removendo números do arquivo"
				sed -E -e 's/[0-9]//g' $arquivo
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				;;
			c)
				echo "Trocando caracteres especiais por <?>"
				echo "1° Opção"
				sed -E -e 's/([[:punct:]])+/<?>/g' -e 's/[ ]+/<?>/g' $arquivo
				echo "2° Opcão"
				sed -E -e 's/[[:punct:]]?/<?>/g' -e 's/^[ ]+/<?>/g' $arquivo
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				;;

			*)
				echo "Erro: Nenhum argumento passado/invalido"	
		esac
	done

else
	echo "Infelizmente o arquivo passado não existe, favor informar um arquivo valido!"
fi


