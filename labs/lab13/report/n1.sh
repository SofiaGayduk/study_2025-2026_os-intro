#!/bin/bash

while getopts ":i:o:p:Cn" opt; do
  case ${opt} in
    i )
      inputfile=$OPTARG
      ;;
    o )
      outputfile=$OPTARG
      ;;
    p )
      pattern=$OPTARG
      ;;
    C )
      case_sensitive=true
      ;;
    n )
      line_numbers=true
      ;;
    \? )
      echo "Неверный параметр: $OPTARG" 1>&2
      exit 1
      ;;
    : )
      echo "Отсутствуют значения параметра: $OPTARG" 1>&2
      exit 1
      ;;
  esac
done

if [ -z "$pattern" ]; then
  echo "Нет шаблона поиска" 1>&2
  exit 1
fi


if [ -z "$inputfile" ]; then
  echo "Нет входного файла" 1>&2
  exit 1
fi


if [ "$case_sensitive" = true ]; then
  grep_options+=" -i"
fi


if [ "$line_numbers" = true ]; then
  grep_options+=" -n"
fi

grep $grep_options "$pattern" "$inputfile"

if [ ! -z "$outputfile" ]; then
  grep $grep_options "$pattern" "$inputfile" > $outputfile
fi


