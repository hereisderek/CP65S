#set -x
cd "${0%/*}"

CompileDirs=("dsdt" "hotpatch" "win")

PartialConfigName="partialConfig.plist"
BaseConfigName="BaseConfig.plist"
OutputConfigName="config.plist"




iasl ./hotpatch/*.dsl
mkdir ./hotpatch/build/
rm ./hotpatch/build/*
mv ./hotpatch/*.aml ./hotpatch/build/

iasl ./dsdt/*.dsl
mkdir ./dsdt/build/
rm ./dsdt/build/*
mv ./dsdt/*.aml ./dsdt/build/

iasl ./win/*.dsl


rm config.plist 
if [[ -f /Volumes/EFI\ SSD/EFI/CLOVER/config.plist ]]; then
	cp /Volumes/EFI\ SSD/EFI/CLOVER/config.plist my_config.plist
fi
if [[ -f my_config.plist ]]; then
	cp my_config.plist config.plist 
	/usr/libexec/PlistBuddy config.plist -x -c "Delete SystemParameters"
	/usr/libexec/PlistBuddy config.plist -x -c "Delete SMBIOS"
	/usr/libexec/PlistBuddy config.plist -x -c "Delete RtVariables"

	# SMBIOS SystemParameters

	/usr/libexec/PlistBuddy ./config.plist -x -c "Merge smbios.plist"


	cp my_config.plist ./hotpatch/build/
	cp config.plist ./hotpatch/build/
	
	/usr/libexec/PlistBuddy ./hotpatch/build/my_config.plist -x -c "Delete ACPI"
	/usr/libexec/PlistBuddy ./hotpatch/build/config.plist -x -c "Delete ACPI"

	/usr/libexec/PlistBuddy ./hotpatch/build/config.plist -x -c "Merge hotpatch/config.plist"
	/usr/libexec/PlistBuddy ./hotpatch/build/my_config.plist -x -c "Merge hotpatch/config.plist"

	cp my_config.plist ./hotpatch/build/
	cp config.plist ./hotpatch/build/

	/usr/libexec/PlistBuddy ./hotpatch/build/config.plist -x -c "Merge hotpatch/config.plist"
	/usr/libexec/PlistBuddy ./hotpatch/build/my_config.plist -x -c "Merge hotpatch/config.plist"


##
	cp hotpatch/config.plist ./hotpatch/build/
	cp hotpatch/my_config.plist ./hotpatch/build/

	/usr/libexec/PlistBuddy ./hotpatch/build/config.plist -x -c "Merge config.plist"
	/usr/libexec/PlistBuddy ./hotpatch/build/my_config.plist -x -c "Merge my_config.plist"

	cp dsdt/config.plist ./dsdt/build/
	cp dsdt/my_config.plist ./dsdt/build/

	/usr/libexec/PlistBuddy ./dsdt/build/config.plist -x -c "Merge config.plist"
	/usr/libexec/PlistBuddy ./dsdt/build/my_config.plist -x -c "Merge my_config.plist"
	
fi

