#!/bin/bash

echo "DIRS"
echo ""

for i in $(ls)
do
	if test -d ${i}; then
		echo ${i}
	fi
done

echo ""
echo "FILES"
echo""

for j in $(ls)
do
	if test -f ${j}; then
		echo ${j}
	fi
done

echo ""
echo "LINKS"
echo ""

for i in $(ls)
do
	if test -L ${i}; then
		echo ${i}
	fi
done

