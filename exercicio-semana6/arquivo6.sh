#!/bin/bash

read -p "Digite o primeiro número: " primeiro
read -p "Digite o segundo número: " segundo

a=$(bc <<< "${primeiro} < ${segundo}")

(( ${a} > 0 )) && echo ${primeiro} || echo ${segundo}

