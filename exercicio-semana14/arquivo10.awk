BEGIN {
	print "Nicknames"
	print ""
	total=1
}

{
	var =""
	if(NF >=4 && NF <7)
	{
		teste=""
		for( i=2;i <=NF;i++){
			var = var""substr($i,1,1);
		}
		teste=$1""var
		A[total]=teste
		total =total +1
	
			
	}
	
}
END {
	for( i in A){
		print A[i]}
}
