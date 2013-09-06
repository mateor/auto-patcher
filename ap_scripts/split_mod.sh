#!/bin/bash


source ap_scripts/environ_config.sh >> /dev/null 2>&1 || source $(echo $0 | sed 's|\(.*\)/.*|\1|')/environ_config.sh

# This allows to pass arguments, so can split AND remove files at once.
if [ $# -gt 0 ]; then
     for FILE in $@; do
          if [[ $FILE == *"/"* ]]; then
               MOD_PATH=$(echo $FILE | sed 's|\(.*\)/.*|\1|') >> /dev/null 2>&1
          fi
          FILE=${FILE##*/}
          args+=($FILE)
     done
     args=( ${args[@]//*'split_patch'*} )
fi

if ( [[ -z "$MOD_PATH" ]] ); then
     MOD_PATH=$(pwd)
else
     cd $ROOT/../$MOD_PATH >> /dev/null 2>&1
fi

python $ROOT/split_patch_opd.py ${args[@]}
[[ -n $OLDPWD ]] && cd - >> /dev/null 2>&1
