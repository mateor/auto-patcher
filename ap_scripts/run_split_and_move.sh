#!/bin/bash

# The MIT License (MIT)
#
# Copyright (c) 2013 Mateor
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

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


dirs=$(find patches/openpdroid/4.2 -name 201*)
dirs+=$(find patches/openpdroid/4.3 -name 201*)
dirs+=$(find patches/openpdroid/4.4 -name 201*)

for d in ${dirs[@]}; do 
     cd ~/android/auto-patcher/$d
     ~/android/auto-patcher/ap_scripts/split_opd.sh ${args[@]}
done

dirs+=$(find patches/pdroid -name 201*)
dirs+=$(find patches/pd2.0 -name 201*)
for d in ${dirs[@]}; do 
    cd ~/android/auto-patcher/$d
    [[ -f preloaded.patch ]] && mv -v preloaded.patch framework_00_preloaded.patch
done
