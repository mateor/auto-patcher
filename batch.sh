#!/bin/bash

ROOT=$(readlink -f "`dirname $0`")

cd $ROOT/patch_tools
tar cvzf ../patch_tools.tgz aapt* *.jar updatecert.pem updatekey.pk8 update-template.zip boot
cd $ROOT

tar cvzf patch_patches.tgz patches

zip autopatcher.zip auto_patcher patch_tools.tgz patch_patches.tgz
