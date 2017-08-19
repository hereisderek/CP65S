#!/bin/bash

# decompile individually
# [ ! -d individual_dump ] && mkdir individual_dump
# rm individual_dump/
# for file in ./aml_dump/*.aml; do 
# 	echo "file: $file"
# 	iasl -da -dl -fe  refs.txt -p "individual_dump/${file##*/}" $file
# done

# iasl -da -dl -fe  refs.txt DSDT.aml	SSDT-11.aml	SSDT-2.aml	SSDT-5.aml	SSDT-8.aml SSDT-1.aml	SSDT-12.aml	SSDT-3.aml	SSDT-6.aml	SSDT-9.aml SSDT-10.aml	SSDT-13.aml	SSDT-4.aml	SSDT-7.aml	SSDT.aml
# iasl -da -dl -fe  refs.txt DSDT.aml	SSDT-11.aml	SSDT-2.aml	SSDT-5.aml	SSDT-8.aml SSDT-1.aml	SSDT-3.aml	SSDT-6.aml	SSDT-9.aml SSDT-10.aml	SSDT-13.aml	SSDT-4.aml	SSDT-7.aml	SSDT.aml


[ -d aml_dump ] && rm -R ./aml_dump 
mkdir aml_dump


cd aml_dump
patchmatic -extract

mv SSDT-1.aml SSDT-1.aml_
mv SSDT-32.aml SSDT-32.aml_




[ -d ../dsl_dump ] && rm -R ../dsl_dump
mkdir ../dsl_dump

cd dsl_dump
iasl -da -dl -fe ../refs.txt *.aml

mv *.dsl ../dsl_dump/

mv SSDT-1.aml_ SSDT-1.aml
mv SSDT-32.aml_ SSDT-32.aml

cd ..


echo "done"
# ls aml_dump/
ls dsl_dump/