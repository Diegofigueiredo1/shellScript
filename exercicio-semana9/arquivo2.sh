#!/bin/bash

if test -z $y; then
	read -p "Digite o valor de Y " y	
fi

if test -z $x; then
	read -p "Digite o valor de X " x
fi

if test -z $z; then
	read -p "Digite o valor de Z " z
fi

soma=$((${y} + ${x} + ${z}))
echo "A soma de x=${x} + y=${y} + z=${z} = ${soma}"
