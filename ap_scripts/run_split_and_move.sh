#!/bin/bash

# unzips all the existing patches

dirs=$(find patches/openpdroid/4.2 -name 2013*)
dirs+=$(find patches/openpdroid/4.3 -name 2013*)

for d in $dirs; do 
     cd ~/android/auto3/$d
     ~/android/auto3/ap_scripts/split_opd.sh
     #mv preloaded.patch framework_preloaded_preloaded.patch
done
