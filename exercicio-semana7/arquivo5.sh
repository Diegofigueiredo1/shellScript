#!/bin/bash

itens=$(ls -F | grep -v '/')

for i in ${itens}
do
	echo $i >> verificando.txt
done

for i in $(cat verificando.txt)
do
	echo $(md5sum $i | cut -c1-32) >> ids.txt
done

for x in $(cat ids.txt);do
	a=0
	for j in $(cat ids.txt);do
		test $x == $j && a=$(($a + 1))		
	done

	(($a >= 2)) && echo 'FALHA' >> confirmacao.txt || echo 'SUCESSO' >> confirmacao.txt

done

$(cat confirmacao.txt | grep 'FALHA' &>/dev/null) && valor=0 || valor=1
(($valor == 0)) && echo 'FALHA' || echo 'SUCESSO'
