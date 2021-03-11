#!/bin/bash

echo -e "obase=16\n(11^3 + 31/4) + 13*3\n10+10\n1+2+3+4+5+6+7+8" > a.txt

bc < a.txt
cat a.txt | bc
