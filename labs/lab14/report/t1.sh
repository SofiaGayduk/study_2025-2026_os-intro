#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Использование: $0 <t1> <t2>"
	exit 1
fi

t1=$1

t2=$2

semaphore_file="semaphore.lock"

touch $semaphore_file

function resourse {
	while ! ln $semaphore_file $0.lock 2>/dev/null; do
		echo "Ожидание освобождения"
		sleep $t1
	done
	
	echo "Ресурс свободен, начало c $t2 секунд"
	sleep $t2 
	echo "Ресурс свободен, завершено"
	
	rm $0.lock
}

resourse
