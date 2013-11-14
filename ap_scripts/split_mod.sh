#!/bin/bash

# The MIT License (MIT)
#
# Copyright (c) 2012, 2013 Mateor
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

python $ROOT/split_patch_mod.py ${args[@]}
[[ -n $OLDPWD ]] && cd - >> /dev/null 2>&1
