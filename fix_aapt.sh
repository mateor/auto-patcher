#!/bin/bash


abspath () {
	case `uname -s` in
	CYGWIN*)
		echo $(cygpath -ua "$1")
		;;
	Darwin)
		#[[ $(echo $1 | awk '/^\//') == $1 ]] && echo "$1" || echo "$PWD/$1"
		[[ ${1:0:1} == "/" ]] && echo "$1" || echo "$PWD/$1"
		;;
	Linux)
                echo $(readlink -f "$1")
		;;
	*)
		if [[ ${1:0:1} == "/" ]]; then
			echo "$1"
		elif [[ ${1:0:2} == "./" ]]; then
			echo "$PWD/${1:2}"
		else
			echo "$PWD/$1"
		fi
		;;
	esac
}

extpath () {
	case `uname -s` in
	CYGWIN*)
		echo $(cygpath -da "$1")
		;;
	*)
		echo $(abspath "$1")
		;;
	esac
}

ROOT=$(abspath `dirname "$0"`)
ROM=$(abspath "$1")
ROMX=$(extpath "$1")


if [ -d patch_tools ]; then
        cd "$ROOT/patch_tools"
        tar xvzf ../patch_tools.tgz
else 
        mkdir  $ROOT/patch_tools
        cd $ROOT/patch_tools
        tar xvzf ../patch_tools.tgz
fi


chmod +x mac/aapt
chmod +x cygwin/aapt.exe
chmod +x linux/aapt

tar cvzf ../patch_tools.tgz *.jar updatecert.pem updatekey.pk8 boot cygwin mac linux
cd "$ROOT"
