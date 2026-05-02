let COUNT=0
for i in $2/*.$1
	do let COUNT++
done
echo $COUNT
