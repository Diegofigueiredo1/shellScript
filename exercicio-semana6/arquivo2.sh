#!/bin/bash

a=$1 b=$2 c=$3

cat ${a} &> /dev/null && echo "SIM" || echo "NAO"
cat ${b} &> /dev/null && echo "SIM" || echo "NAO"
cat ${c} &> /dev/null && echo "SIM" || echo "NAO"
