BEGIN {
	media["00-9.9"]=0
	media["10-19.9"]=0
	media["20-29.9"]=0
	media["30-39.9"]=0
	media["40-49.9"]=0
	media["50-59.9"]=0
	media["60-69.9"]=0
	media["70-79.9"]=0
	media["80-89.9"]=0
	media["90-100"]=0

}

function hist(n)
{
	ret=""
	if (n == 0)
	{
		ret=":"
	}
	else {
		for(i=1; i<=n; i++){
			ret = ret "#"}
	}
	return ret
}

{
	count=0;
  	for(i=1; i<=NF; i++)
	{
		if( $i ~ /[0-9]+/ ) count = count + $i;
	}
	var = count/3
	if (var >= 90 && var <=100){
		media["90-100"]+=1}
	else if (var >= 80){
		media["80-89.9"]+=1}
	else if (var >= 70){
		media["70-79.9"]+=1}
	else if (var >= 60){
		media["60-69.9"]+=1}
	else if (var >= 50){
		media["50-59.9"]+=1}
	else if (var >= 40){
		media["40-49.9"]+=1}
	else if (var >= 30){
		media["30-39.9"]+=1}
	else if (var >= 20){
		media["20-29.9"]+=1}
	else if (var >= 10){
		media["10-19.9"]+=1}

	else {
		media["00-9.9"]+=1}

  	if (count/3 >= 70)
    		ap++;
  	else
    		rp++;

}
#CMD awk -f arquivo8.awk in6.txt | sort
END {
 	for (x in media)
	       	printf "  %-15s  %s\n", x,hist(media[x]);
	print "Alunos Aprovados: "ap" Alunos Reprovados: "rp
}

