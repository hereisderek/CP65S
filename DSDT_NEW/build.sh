#set -x


iasl ./hotpatch/*.dsl
mkdir ./build/
rm -r ./build/*
mv ./hotpatch/*.aml ./build/

rm config.plist 

cp /Volumes/EFI\ SSD/EFI/CLOVER/config.plist my_config.plist
cp my_config.plist config.plist 

/usr/libexec/PlistBuddy config.plist -x -c "Delete SystemParameters"
/usr/libexec/PlistBuddy config.plist -x -c "Delete SMBIOS"
/usr/libexec/PlistBuddy config.plist -x -c "Delete RtVariables"

# SMBIOS SystemParameters

/usr/libexec/PlistBuddy ./config.plist -x -c "Merge smbios.plist"