#!/bin/bash
. modulo.sh
read -p "Informe o nome do arquivo: " arq
if [ -f $arq ];then
	for i in $*;do
		case $i in
			a)
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				echo "Arquivo Informado!"
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				cat $arq
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				echo "Removendo todas as letras maisculas (usando tr)"
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				r_tr=$(remover_tr $arq)
				cat $r_tr
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				echo ""
				;;
			b)
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				echo "Arquivo Informado!"
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				cat $arq
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				echo "Removendo todos os digitos (usando sed)"
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				r_sed=$(remover_sed $arq)
				cat $r_sed
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				echo ""
				;;
			c)
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				echo "Arquivo Informado!"
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				cat $arq
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				echo "Substituindo caracteres especiais por <?> (usando awk)"
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				s_awk=$(sub_awk $arq)
				cat $s_awk
				echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
				echo ""

				;;
			*)
				echo "Parâmetro não reconhecido"
		esac
	done

else
	echo "Arquivo não existe!"
fi
