#!/bin/bash


for i in $*
do
	case $i in
		'a')
			echo "DIR"
			ls -la | grep -E "^[d]"
			echo ""
			;;
		'b')
			echo "Exec"
			ls -la | grep -E "^-[rwx]{3}"
			echo ""
			;;
		'c')
			echo "ScriptShell"
			ls -la | grep -E ".*\.sh"
			echo ""
			;;
		'd')
			echo "Links"
			ls -la | grep -E "^[l]"
			echo ""
			;;
		'e')
			echo "< 100Bytes"
			ls -la | grep -E "^-" > /tmp/verificando.txt
			for i in $(cat /tmp/verificando.txt | tr -s ' ' '|' | cut -d'|' -f9); do
				a=$(du -b $i)
				b=$(echo $a | tr -s ' ' '|' | cut -d'|' -f1)
				c=$(echo $a | tr -s ' ' '|' | cut -d'|' -f2)
				if [ $b -le 100 ]; then
					ls -la $c
				fi


			done
			echo ""



	esac

done

