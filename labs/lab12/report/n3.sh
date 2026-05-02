echo "$1/ " | tr -d "\n";
stat --printf "%A" "$1/";
echo
for i in $1/*
	do echo "${i} " | tr -d "\n";
	stat --printf "%A" "${i}";
	echo
done
