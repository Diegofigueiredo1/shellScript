#!/bin/bash

a=$1

x=$(wc -l ${a} 2> /dev/null | cut -c 1)
test -e ${a} || x=0
(( ${x} <= 5)) && echo "Bad" || echo "Maior que 5"
