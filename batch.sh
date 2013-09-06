#!/bin/bash

source ap_scripts/environ_config.sh || source $(echo $0 | sed 's|\(.*\)/.*|\1|')/environ_config.sh

BACKUPS=$(find . -name "*~")
for backup in ${BACKUPS[@]}; do
     rm -v $backup
done

cd "$ROOT/patch_tools"
tar cvzf ../patch_tools.tgz *.jar updatecert.pem updatekey.pk8 boot cygwin mac linux
cd "$ROOT"

tar cvzf patch_patches.tgz patches

zip autopatcher.zip auto_patcher patch_tools.tgz patch_patches.tgz ap_scripts/*
