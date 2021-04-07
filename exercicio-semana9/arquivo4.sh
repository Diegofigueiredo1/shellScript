#!/bin/bash

for i in $(ls)
do
	if test -f ${i}; then
		if test -x ${i}; then
			rm ${i}
		fi
	fi
done	
