#!/bin/bash

ROOT=$(readlink -f "`dirname $0`")

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
