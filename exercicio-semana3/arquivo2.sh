#!/bin/bash

read -p "Caminho para primeiro diretorio " primeiro
read -p "Caminho para segundo diretorio " segundo
read -p "Caminho para terceiro diretorio " terceiro

echo -e "Conteúdo do primeiro diretorio\n$(ls ${primeiro})"

echo -e "Conteúdo do primeiro diretorio\n$(ls ${segundo})"

echo -e "Conteúdo do primeiro diretorio\n$(ls ${terceiro})"
