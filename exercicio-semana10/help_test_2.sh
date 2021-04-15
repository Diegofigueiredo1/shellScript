#!/bin/bash

while true; do
	echo "-=-=-=-=-=-=-=-=-=-=-=-=-="
	echo -e "Menu de opções\nParametros de lógica digite: 'logica' \nParametros de aritmetica digite: 'aritmetica'\nParametros para Strings digite: 'strings'\nParametros para váriaveis digite: 'variaveis\nParametros para arquivos digite: 'arquivos'\nAjuda sobre a notação estendida '[[ ]]' digite: 'extended'\nSair digite: 'sair'\n"
	read -p "Digite uma das opções: " opcao
	echo "-=-=-=-=-=-=-=-=-=-=-=-=-="
	echo ""
	case $opcao in
		'logica')
			echo ""
			echo "Operadores para logica"
			echo ""
			echo " ! Logica NOT ou NÃO"
			echo "-o Logica OU, (OR) ou ||"
			echo "-a Logica E, (AND) ou &&"
			echo ""
			;;
		'aritmetica')
			echo ""
			echo "Operadores para números"
			echo ""
			echo "Comando = test 'variável/parâmetro' operador 'variável/parâmetro'"
			echo "Comando = [ 'variável/parâmetro' operador 'variável/parâmetro' ]"
			echo ""
			echo "-lt Verifica se é menor"
			echo "-gt Verifica se é maior"
			echo "-le Verifica se é menor ou igual"
			echo "-ge Verifica se é maior ou igual"
			echo "-eq Verifica se é igual"
			echo "-ne Verifica se é diferente"
			echo ""
			;;
		'strings')
			echo ""	
			echo "Operadores para Strings"
			echo ""
			echo "Comando = test 'variável/parâmetro' operador 'variável/parâmetro'"
			echo "Comando = [ 'variável/parâmetro' operador 'variável/parâmetro' ]"
			echo ""
			echo "= Verifica se é igual"
			echo "!= Verifica se é diferente"
			echo ""
			;;
		'variaveis')
			echo ""
			echo "Operadores para variáveis"
			echo ""
			echo "Comando = test operador 'variável/parâmetro'"
			echo "Comando = [ operador 'variável/parâmetro']"
			echo ""
			echo "-n Verifica se não é nula"
			echo "-z Verifica se é nula"
			echo ""
			;;
		'arquivos')
			echo ""
			echo "Operadores para arquivos/diretórios"
			echo ""
			echo "Comando = test operador 'variável/parâmetro'"
			echo "Comando = [ operador 'variável/parâmetro']"
			echo ""
			echo "-d Verifica se é diretório"
			echo "-f Verifica se é arquivo"
			echo "-e Verifica se existe"
			echo "-O Verifica se o dono do arquivo é o usuário que esta executando"
			echo "-s Verifica se o arquivo não esta vazio"
			echo "-L Verifica se é um link-simbólico"
			echo "-r Verifica se o usuário tem permissão de leitura"
			echo "-w Verifica se o usuário tem permissão de gravação"
			echo "-x Verifica se o usuário tem permissão de execução"
			echo "-nt Verifica se é mais recente"
			echo "-ot Verifica se é mais antigo"
			echo "-ef Verifica se é igual"
			echo ""
			;;
		'extended')
			echo ""			
			echo "'[[ ]]' Extensão do bash 4, onde o comando é tratanto internamente."
			echo "Suporte simples, isto '[]', é compatível com o shell POSIX para incluir uma expressão condicional."
			echo "Colchetes duplos, isto '[[ ]]', é uma versão aprimorada (ou extensão) da versão POSIX padrão; isso é suportado pelo bash e outros shells (zsh, ksh)."
			echo "No bash, para comparação numérica usamos eq, ne, lt e gt, com colchetes duplos para comparação, podemos usar '==', '!=', '<',e '>' literalmente."
			echo "'[ ]' É sinônimo de comando de teste."
			echo "'[[ ]]'É uma nova versão aprimorada."
			echo ""
			;;
		'sair') break ;;
		*)
			echo ""
			echo "Opção não encontrada"
			echo ""
	esac

done
