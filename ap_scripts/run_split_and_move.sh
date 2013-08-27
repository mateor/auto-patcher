#!/bin/bash

# unzips all the existing patches

# This will not solve/split the reservoir files, that either needs to be coded in or done by hand. Once done, it
# should basically be done forever. This is useful as a garbage disposal, though.

# This allows to pass arguments, so can split AND remove files at once.
if [ $# -gt 0 ]; then
     for FILE in $@; do
          args+=($FILE)
     done
     args=( ${args[@]//*'run_split'*} )
fi


dirs=$(find patches/openpdroid/4.2 -name 2013*)
dirs+=$(find patches/openpdroid/4.3 -name 2013*)

for d in $dirs; do 
     cd ~/android/auto3/$d
     ~/android/auto3/ap_scripts/split_opd.sh ${args[@]}
     #mv preloaded.patch framework_preloaded_preloaded.patch
done
