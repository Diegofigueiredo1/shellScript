#!/bin/bash

read -p "Primeiro arquivo: " primeiro
read -p "Segundo arquivo: " segundo

a=$(wc -l ${primeiro} | cut -c 1)

b=$(wc -l ${segundo} | cut -c 1)


(( ${a} > ${b} )) && echo "1°arquivo: ${primeiro}" || echo "2°arquivo: ${segundo}"
