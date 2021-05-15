BEGIN {
	print "APROVADOS"
	print""
	total=1
}
{
	teste="" 
	count= 0
	for( i=1; i<=NF;i++)
	{
		if( $i ~ /[0-9]/ ) count = count + $i;
	}
	if ( count/3 >= 70 ){
		for( i=1; i<=NF-3;i++)
			teste = teste" "$i
		A[total]=teste
		total =total +1
	

	}

}

END {
	for(i in A ){
		print A[i]}
}

