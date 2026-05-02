#!/bin/bash

directory=$1
output_ar="archive.tar.gz"
day=7

if [ -z "$directory" ]; then
    echo "указать директорию"
    exit 1
fi

if [ ! -d "$directory" ]; then
    echo "нет такой директории"
    exit 1
fi

find "$directory" -type f -mtime -$day -print0 | tar --null -czf "$output_ar" --files-from -
echo "Архив создан $output_ar"
