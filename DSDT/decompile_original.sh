#!/bin/bash

[ -d original_dsl_tmp ] && rm -R original_dsl_tmp
mkdir original_dsl_tmp

cp original_aml/DSDT.aml original_dsl_tmp/
cp original_aml/SSDT*.aml original_dsl_tmp/

cd original_dsl_tmp

iasl -da -dl -fe  ../refs.txt  DSDT.aml SSDT*.aml # >/dev/null 2>&1

aml_count=`ls -lR *.aml | wc -l`
dsl_count=`ls -lR *.dsl | wc -l`

rm *.aml

cd ..
[ -d original_dsl ] && rm -R original_dsl
mv original_dsl_tmp original_dsl

exit 0

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

# mv SSDT-1.aml SSDT-1.aml_
# mv SSDT-32.aml SSDT-32.aml_




[ -d ../dsl_dump ] && rm -R ../dsl_dump
mkdir ../dsl_dump

# compose compile list

iasl -da -dl *.aml >/dev/null

[ $? -eq 0 ] && mv *.dsl ../dsl_dump/

# mv SSDT-1.aml_ SSDT-1.aml
# mv SSDT-32.aml_ SSDT-32.aml




# dump individual dsl files
[ -d ../individual_dump ] && rm -R ../individual_dump
mkdir ../individual_dump

echo "decompiling individual dsl file"
for file in *.aml; do 
	# echo "file: $file"
	iasl -da -dl -fe  ../../refs.txt -p "../individual_dump/${file##*/}" $file >/dev/null 2>&1
done

cd ..

echo "done"
# ls aml_dump/
ls dsl_dump/