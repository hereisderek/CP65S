#!/bin/bash
#set -x


curl_options="--retry 5 --location"
# curl_options_silent="--retry 5 --location --silent"
download_dir=download
download_kext_dir=${download_dir}/kexts
build_dir=build
temp_dir=tmp
util_dir=Util

# scripts/commands
efiScript="$util_dir/mount_efi.sh"
pledit=/usr/libexec/PlistBuddy

# show progress bar?
SLIENT=1
NOT_SLIENT=0

RELEASE_OR_DEBUG=RELEASE #kext type


efiloc=""


checkMount()
# $1 mount partition 
{
	local mount_efi_url=https://raw.githubusercontent.com/black-dragon74/OSX-Debug/master/mount_efi.sh
	checkAndCreateDir $download_dir
	checkAndCreateDir $download_kext_dir
	checkAndCreateDir $util_dir

	if [ ! -e $util_dir/mount_efi.sh ]; then
		echo "mount_efi.sh doesn't exist, downloading... "
		download $mount_efi_url $NOT_SLIENT $efiScript
	fi

	chmod a+x $efiScript
	checkCommands $efiScript
	efiloc="$(sudo "$efiScript")"
	echo -e "Mounted EFI at $efiloc (credits RehabMan)"
}

checkCommands()
# $1 command
{	
	echo "checking command:$1"
	command -v $1 >/dev/null 2>&1 || { echo >&2 "require $1 but it's not found.  Aborting."; exit 1; }
}

checkAndCreateDir()
# $1 dir
{
	# echo "checking folder: $1"
	local result=''
	if [ "$1" == "" ]; then return; fi
	
	if [ -f "$1" ]; then
		echo "file: $1 already exit, please remove it"
		exit 1
	fi

	if [ ! -d "$1" ]; then mkdir -p $1; fi;
	return
}

download_slient() 
# $1 url
# $2 save as (optional)
{
	download $1 1 $2
}

download()
# $1 url
# $2 1 slient download default: show progress
# $3 save as (optional)
{
	if [ "$#" -eq 0 -o "$#" -gt 3 ]; then
		echo "error: num:$# - $@"
		return
	fi

	local url=$1
	


	local params=$curl_options

	local slient=""
	local output=""
	local output_param=""

	if [ "$#" -eq 1 ]; then
		:
		# slient=" --progress-bar"
	else
		# both empty
		if [ "$2" -eq 0 ] || [ "$2" -eq 1 ]; then
			if [ "$2" -eq 1 ]; then 
				slient=" --silent"
			fi
			output=$3
		else
			output=$2
		fi
	fi

	if [ -z $slient ]; then slient=" --progress-bar"; fi # show progress bar by default


	if [ -z $output ]; then 
		# output is blank
		checkAndCreateDir $download_dir
		cd $download_dir
		output_param=" --remote-name"
	else
		output_param=" --output $output"
	fi

	params="$params $slient $output_param $url"


	echo "downloading $1 and save to $3"
	# echo "url:$url, slient:$slient, output_param:$output_param"
	# echo "running curl with params: $params @${PWD##*/}"
	curl $params

	if [ -z $output ]; then cd - >&- 2>&-; fi
}






if [ ! -f config.plist ]; then 
	echo "config.plist doesn't exist, unable to proceed"
	exit 1
fi

if [ -d "$build_dir/CLOVER" ]; then rm -r "$build_dir/CLOVER"; fi
checkAndCreateDir "./$build_dir/CLOVER"
cp config.plist "./$build_dir/CLOVER/"


# download clover sed -n 's/.*href="\([^"]*\).*/\1/p' ; sed -n 's/.*href="\([^"]*\).*/\1/p"'


