#set -x


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
fi

