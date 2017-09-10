#!/usr/bin/sudo bash

new_kext="/Users/derek/Desktop/MironeAudio/10ec0892/279.48/full Patched AppleHDA/AppleHDA.kext"
sys_kext="/System/Library/Extensions/AppleHDA.kext"
# sudo -- sh -c 'kext="/Users/derek/Desktop/MironeAudio/10ec0892/279.48/full Patched AppleHDA/AppleHDA.kext" \
# 	chown -R root:wheel "${kext}" \
# 	kextunload "${kext}" \
# 	kextunload "/System/Library/Extensions/AppleHDA.kext" \n
# 	kextload "${kext}" \
# 	'

if [ -d "${new_kext}" ]; then
	if [ -d "${sys_kext}" ]; then 
		sudo kextunload "${sys_kext}"
		rm -r ${sys_kext}
	fi
	cp -Ra "${new_kext}" "${sys_kext}"
	sudo chown -R root:wheel ${sys_kext}
	sudo chmod -R 755 ${sys_kext}
	sudo touch /System/Library/Extensions && sudo kextcache -u /
	sudo kextload "${sys_kext}"
	echo "succeed"
else 
	echo "error"
fi