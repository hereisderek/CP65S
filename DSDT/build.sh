#!/bin/bash


# this script is used to compile both modified dsl files (dsdtDir) and hotpatch files (hotpatchBuildDir)
# into buildDir and hotpatchBuildDir respectfully


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

DEBUG=true

skippedDslName=("SSDT-Disable_EH01" "SSDT-Disable_EH02" "SSDT-Disable_EHCI" "SSDT-PluginType1")


dsdtDir=work_dir_dsl
buildDir=output
hotpatchDir=work_dir_hotpatch
hotpatchBuildDir=output_hot_patch


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

	[ $DEBUG ] && echo "${dslFile} fileName: $fileName"


	local skipped=false
	for skippedDsl in ${skippedDslName[@]}; do
		if [ "$skippedDsl" = "$fileName" ]; then
			echo "DSL file: $fileName is skipped"
			skipped=true
			break
		fi
	done

	if [[ "$skipped" == true && ! -d "${outputDir}/disabled" ]]; then
		mkdir -p "${outputDir}/disabled"
	fi
	
	local outputFile=""
	if [ "$skipped" = true ] ; then
		outputFile="${outputDir}/disabled/${fileName}.aml"
	else
		outputFile="${outputDir}/${fileName}.aml"
	fi
	[ DEBUG ] && echo "file is skipped: $skipped, output: $outputFile, outputDir:${outputDir}, fileName: $fileName"

	# local outputFile="${outputDir}/${fileName}.aml"
	# [[ $skipped ]] && outputFile="${outputDir}/disabled/${fileName}.aml"

	[ -f ${outputFile} ] && rm ${outputFile}

	echo "compiling  ${dslFile} into ${outputFile}  "
	iasl -ve -p "${outputFile}" "${dslFile}" 
	if [ ! -f ${outputFile} ]; then
		return -1
	fi
	return 0
}

echo "compiling dsl"

if [ -d ${buildDir} ]; then
	rm -r ${buildDir}
fi

mkdir ${buildDir}

if [ ! -d ${dsdtDir} ]; then
	echo "unable to find dsdt dir, skipping the machine dsl compiling"

else
	for dslFile in ${dsdtDir}/*.dsl
		do
			compileDslFile "${dsdtDir}" "${dslFile}" "${buildDir}"
			# iasl -ve -p "${buildDir}/${fileName}.aml" "${dslFile}"
			if [ $? -ne 0 ]; then
				((var+=1))
			fi
		done
fi



if [ -d ${hotpatchDir} ]; then
	echo "compiling hot patches"

	if [ -d ${hotpatchBuildDir} ]; then
		rm -r ${hotpatchBuildDir}
	fi
	mkdir ${hotpatchBuildDir}

	for dslFile in ${hotpatchDir}/*.dsl
	do
		compileDslFile "${dsdtDir}" "${dslFile}" "${hotpatchBuildDir}"
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
