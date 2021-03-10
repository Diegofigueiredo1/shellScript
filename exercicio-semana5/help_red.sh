#!/bin/bash

echo -e "Redirecionadores de saída padrão para um arquivo\n"

echo -e "'>' Redireciona a saída padrão do comando executado para um arquivo X  sobrescrevendo seu conteúdo anterior ex: cat arquivo.txt > X.txt\n'>>' adiciona a saída  do comando ao final do arquivo X sem sobrescrever ex: ls a.txt >> X.txt\n"

echo -e "Redirecionadores de saída de erros padrão para um arquivo\n"

echo -e "'2>' Sobrescreve o arquivo em questão ex: ls b.txt 2> x.txt onde o b.txt não exista\n'2>>' Vai adicionar o conteúdo da saída do comando ao final do arquivo, sem sobrescrever ex: date -F 2>> x.txt\n"

echo -e "Redirecionadores de todas as saídas para um arquivo\n"

echo -e "'&>' Vai sobrescrever o arquivo em questão ex: cat c.txt &> saida.txt . Caso o arquivo não exista ele vai ser criado\n'&>>' Vai adicionar a saída do comando ao final do arquivo sem apagar o conteúdo ex: cat d.txt &>> saida.txt\n"

echo -e "Redirecionadores de entrada\n"

echo -e "'<' Redireciona um arquivo para a entrada padrão de um comando que possa ser executado ex: bc < a.txt\n'<<' Redireciona a entrada padrão do comando para um documento escrito no próprio Bash ex: cat << 'FIM' vai permitir o usuário ir adicionando conteúdo ao arquivo ate digitar FIM\n"

echo -e "'<<<' Vai redirecionar a entrada padrão do comando para uma string escrita no Bash ex: bc <<< '10 + 10'\n"

echo -e "O pipe '|' permite direcionar a saída de um comando para outro ex: cat a.txt b.txt | bc\n"
