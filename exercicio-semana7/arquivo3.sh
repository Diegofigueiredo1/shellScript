#!/bin/bash

itens=$(ls -F | grep -v '/')

for i in ${itens}
do
	echo $(wc -l ${i})
done

