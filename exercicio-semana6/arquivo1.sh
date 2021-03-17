#!/bin/bash

read -p "Primeiro número: " primeiro
read -p "Segundo número: " segundo

(( ${primeiro} < ${segundo} )) && echo ${primeiro} || echo ${segundo}
