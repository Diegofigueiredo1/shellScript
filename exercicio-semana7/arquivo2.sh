#!/bin/bash

read -p "Digite o valor de (a): " a
read -p "Digite o valor de (b): " b


for i in $(seq ${a} ${b})
do
	c=$(( ${c} + ${i} ))
done

echo ${c}
