#!/bin/bash

# this script patches all the dsl files within a given folder with a given patch
# (still needs a lot of work)

# if hash gdate 2>/dev/null; then
#         gdate "$@"
#     else
#         date "$@"
# fi

workDir=work
buildDir=build
tempDir=tmp

shopt -s nullglob
rm -r $tempDir
mkdir $tempDir
cp $workDir/*.dsl $tempDir

echo "type exit to quit"

patchAll() {
	# if [ "$#" -ne 1 ]; then
	# 	echo "error, need one patchFile"
	# 	return -1
	# fi

	resultCode=0
	if [ ! -f $1 ]; then
		echo "patch file not exist: $1"
		return -1
	fi

	for dslFile in ${workDir}/*.dsl
	do
		fileName="${dslFile##*/}"
		fileName="${fileName%%.*}"

		echo "patching ${dslFile} with "${1##*/}""
		local result=$(patchIndividualFile ${dslFile} $1)
		local resultCode=$?
		if [ $resultCode -ne 0 ]; then
			echo "patchIndividualFile returns error, code: $result, exit"
			return $resultCode
		fi

		echo "patchAll resultCode: $resultCode"
	done

	return $resultCode
}

# $1: dsl file 
# $2: patch
patchIndividualFile() {
	if [ $# -ne 2 ]; then
		echo "wrong argements"; return -1 
	fi

	if [ ! -f $1 ]; then
		echo "dsl file not exist: $1, $2"
		return -1
	fi

	echo "applying patch $2 to file: $1"
	local resultStr=$(patchmatic "${dslFile}" "$2" "${buildDir}/${fileName}.dsl")
	local resultCode=$?
	echo "result is: $resultCode"
	if [ ! -f "${buildDir}/${fileName}.dsl" ]; then
			((var+=1))
		fi
	return $resultCode
}



if ! hash patchmatic 2>/dev/null; then
        # echo "patchmatic was found, proceed"
    # else
        echo "patchmatic cannot be found, exitng"
        exit
fi

while read -r patchFile
do
	[ ${patchFile} = "exit" ] && echo "exiting" && exit
	echo "applying patch: $patchFile to all dsl files"
	# result=$(patchAll)
	result=$(patchAll "${patchFile}")
	resultCode=$?
	echo "patch finished, final result code: $resultCode"
done # < "${1:-/dev/stdin}"

