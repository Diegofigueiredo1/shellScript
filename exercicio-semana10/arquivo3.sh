#!/bin/bash

while true; do
	echo -e "Menu de opções\nExibir diretorios digite: 'd'\nExibir arquivos digite: 'f'\nExibir o conteudo de um arquivo digite: 'v <arq>'\nOara trocar de diretorio digite: 'cd <dir>'\nPara sair digite: 'q'\n"
	read -p "O que deseja fazer: " opcao
	case $opcao in
		"v "*"")
			a=$(echo $opcao | cut -c 3-)
			if test -f $a; then
				echo $(cat $a)
			else
				echo ""
				echo "O arquivo $a não existe"
				echo ""
			fi
			;;
		"cd "*"")
			b=$(echo $opcao | cut -c 3-)
			if test -d $b; then
				cd $b'/'
			else
				echo ""
				echo "O diretorio não existe"
				echo ""
			fi
			;;
		'd')
			echo "Diretorios"
			echo ""
			for i in $(ls); do
				if test -d ${i}; then
					echo ${i}
				fi
			done
			echo ""
			;;
		'f')
			echo "Arquivos"
			echo ""
			for i in $(ls); do
				if test -f ${i}; then
					echo ${i}
				fi
			done
			echo ""
			;;
		'q') break ;;
		*)
			echo ""
		       	echo "Opção não encontrada"
			echo ""
	esac

done
