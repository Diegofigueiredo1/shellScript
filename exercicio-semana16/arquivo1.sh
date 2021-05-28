#!/bin/bash

function maior() {
	mvalor=0
	for i in $*;do
		if [ $mvalor -eq 0 ];then
			mvalor=$i
		else
			if [ $i -gt $mvalor ];then
				mvalor=$i
			fi
		fi
	done
	echo "O maior valor é: $mvalor"

}

read -p "Digite quantos números quiser! " a
A=( $a )
echo "Do array ${A[*]}"
maior ${A[*]}
