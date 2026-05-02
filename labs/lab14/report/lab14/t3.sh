#!/bin/bash

generate_random_letter() {
	random_nuber=$((RANDOM % 26))
	
	letter=$(printf \\$(printf '%03o' $((65 + $random_nuber))))
	
	echo -n "$letter"
}

random_sequence=""

for ((i=0; i<10; i++)); do
random_sequence="$random_sequence$(generate_random_letter)"
done

echo "Случайная последовательность $random_sequence"
