#!/bin/bash

function remover_tr {
	$(tr -d '[A-Z]' < $1 > /tmp/rtr.txt)
	echo "/tmp/rtr.txt"

}


function remover_sed {
	$(sed 's/[0-9]//g' < $1 > /tmp/rsed.txt)
	echo "/tmp/rsed.txt"
}


function sub_awk {
	$(awk '{gsub(/[!@#$%¨&*\/\{\[\]\(\)\}]+/, "<?>" )}{print $0}' $1 > /tmp/subawk.txt)
	echo "/tmp/subawk.txt"
}



