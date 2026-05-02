#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Использование: $0 <название_команды>"
	exit 1
fi

command_name=$1

man_directory="/usr/share/man/man1"

if [ -f "$man_directory/$command_name.1.gz" ]; then
	zcat "$man_directory/$command_name.1.gz" | less
else
	echo "Справка для команды '$command_name' не найдена"
fi
