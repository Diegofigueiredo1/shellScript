#!/bin/bash

a=$1 b=$2

total=$(( (${a} + 10) ** ${b} - 5 ))

echo " O total é igual a: ${total}"
