{
	print $1" "$2 > "rankmeninos.txt"
	print $3" "$4 > "rankmeninas.txt"

}

END { 
	print "Finalizado"
	#Foi criado os dois arquivos no dict atual
	#CMD " awk -f arquivo2.awk in2.txt "	
	
}

