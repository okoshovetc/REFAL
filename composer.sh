#!/bin/bash

file_arr=(
	'labels' 'main' 'normalize' 
	'spaces' 'primitives' 'operations' 
	'operators' 'expressions' 'check_structure' 
	'burry_identifiers' 'special_check' 'translation');

echo '' > final.ref

cd modules

for i in `seq 1 ${#file_arr[@]}`; do
	cat ${file_arr[$i-1]} >> ../final.ref
	echo -e '\n*--------------------\n' >> ../final.ref
done

cd ..

echo 'END' >> final.ref
clear
cat file.pas | ./refal2 final.ref
