#!/bin/bash

mkdir /tmp/$(date +%F)

cp -r . /tmp/$(date +%F)

tar -cvf diretoriocompact.tar.gz /tmp/$(date +%F)

rm -rf /tmp/$(date +%F)/
