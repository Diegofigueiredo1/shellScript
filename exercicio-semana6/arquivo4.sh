#!/bin/bash

a=$1 b=$2

x=$(ls -l  "${a}"/ | grep "^-" -c )

y=$(ls -l  "${b}"/ | grep "^-" -c )


(( ${x} > ${y} )) && ls ${a} || ls ${b}
