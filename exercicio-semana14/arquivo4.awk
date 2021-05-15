{
	A[$1]+=$3
}
END {
	for( i in A ){
		print i,A[i]}
	
	#CMD 'awk -f arquivo4.awk in4.txt'
}

