#!/bin/bash

echo "O shell permite que se possa criar variáveis e que se possa atribuir valores por ex:"

estado="Paraiba"

echo "Foi passado uma variavel 'estado' a qual foi atribuido o valor Paraiba, para podermos exibir o valor dessa variável podemos utilizar o conceito de substituição de variáveis, onde utilizamos o '$+nome da variável' para realizarmos essa substituição e se utilizar o comando 'echo 'Meu estado é a '$ + estado' teremos como resultado a substituição de estado pelo nome que foi atribuido, para evitarmos qualquer problema de sintaxe é recomendado que se utilize '$ + {}' para expecificar qual é a variável que sera substituida"

echo -e "Ex:\n Meu estado é a ${estado}"

echo 'Em relação a subtituição de shell todo comando que seja executado desta forma dentro dos parênteses $() vai ser executado e o seu resultado vai ser alocado no local que esta definido no script '

echo -e "Por ex:\nA data de hoje é $(date +%F)\n'O que está acontecendo é que o comando '$+(date +%F)' está sendo executado pelo shell e está incluindo a saida do seu resultado no local que foi determinado no script gerando aquela que foi exebida na linha anterior ' "

