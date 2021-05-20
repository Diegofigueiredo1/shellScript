#!/bin/bash

function maior {
	
	valor=""
	for i in $*;
	do

		if [ -z $valor ];then
			valor=$(echo $i)
		fi
		if [ $valor -lt $i ];then
			valor=$(echo $i)
		fi

	done
	echo $valor

}
#read -p "Digite dois números: " a b
maior $1 $2

function menor {

	valor=""
	for i in $*;
	do

		if [ -z $valor ];then
			valor=$(echo $i)
		fi
		if [ $valor -gt $i ];then
			valor=$(echo $i)
		fi

	done
	echo $valor
}

#$read -p "Digite dois números: " a b
menor $1 $2
