#!/bin/bash

# To decompile: iasl -da -dl -fe refs.txt DSDT.aml SSDT*.aml


# External(MDBG, MethodObj, 1)
# External(_GPE.MMTB, MethodObj, 0)
# External(_SB.PCI0.LPCB.H_EC.ECWT, MethodObj, 2)
# External(_SB.PCI0.LPCB.H_EC.ECRD, MethodObj, 1)
# External(_SB.PCI0.LPCB.H_EC.ECMD, MethodObj, 1)
# External(_SB.PCI0.PEG0.PEGP.SGPO, MethodObj, 2)
# External(_SB.PCI0.GFX0.DD02._BCM, MethodObj, 1)
# External(_SB.PCI0.SAT0.SDSM, MethodObj, 4)
# External(_GPE.VHOV, MethodObj, 3)
# External(_SB.PCI0.XHC.RHUB.TPLD, MethodObj, 2)

workDir=work
buildDir=build
hotpatchDir=hot_patch
hotpatchBuildDir=build_hot_patch

if [ -d build ]; then
	rm -r build
fi

mkdir build
errorCounter=0


shopt -s nullglob


# $1 folder
# $2 file name
# $3 output folder
compileDslFile() {
	local fromDir=$1
	local dslFile=$2
	local outputDir=$3

	[ ! -d ${outputDir} ] && mkdir -p ${outputDir}
	
	
	local fileName="${dslFile##*/}"
	fileName="${fileName%%.*}"
	echo "${dslFile} fileName: $fileName"

	local outputFile="${outputDir}/${fileName}.aml"
	[ -f ${outputFile} ] && rm ${outputFile}


	echo "compiling  ${dslFile} into ${outputFile}  "
	iasl -ve -p "${outputFile}" "${dslFile}" 
	if [ ! -f ${outputFile} ]; then
		return -1
	fi
	return 0
}

echo "compiling dsl"
for dslFile in ${workDir}/*.dsl
do
	compileDslFile "${workDir}" "${dslFile}" "${buildDir}"
	# iasl -ve -p "${buildDir}/${fileName}.aml" "${dslFile}"
	if [ $? -ne 0 ]; then
		((var+=1))
	fi
done

if [ -d ${hotpatchDir} ]; then
	echo "compiling hot patches"
	for dslFile in ${hotpatchDir}/*.dsl
	do
		compileDslFile "${workDir}" "${dslFile}" "${hotpatchBuildDir}"
		# iasl -ve -p "${buildDir}/${fileName}.aml" "${dslFile}"
		if [ $? -ne 0 ]; then
			((var+=1))
		fi
	done
fi

if [ ${errorCounter} -ne 0 ]; then
	echo "error were found"
else 
	echo "succeed"
fi
