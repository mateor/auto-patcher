#!/bin/bash
#!/bin/bash

# The MIT License (MIT)
#
# Copyright (c) 2012 pastime1971
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

DATE=`date +"%Y%m%d"`
[[ $# -gt 0 ]] && DATE=$1
ROOT=$(readlink -f "`dirname $0`")
DEST=$(readlink -f "`dirname $ROOT/../patches`")

mods=`ls built`
for mod in ${mods[@]}; do
	roms=`ls built/$mod`
	for rom in ${roms[@]}; do
		#echo "*** processing $mod $rom ***"
		cd $ROOT
		STOCK=(`ls -dt built/$mod/$rom/stock.$DATE*`) || continue
		MODED=built/$mod/$rom/$mod${STOCK##*stock}
          echo "moded is $MODED"
		if [ -d $MODED ]; then
			echo "### processing $mod $rom $DATE ###"
			$ROOT/mkdiff.sh $STOCK $MODED
			$ROOT/changes.sh $ROOT $DEST/$mod/$rom/latest > LOG.$rom
			if [ -s LOG.$rom ]; then
				echo "$rom needs update"
				grep "^###" LOG.$rom > OUT.$rom
				NEWS=$DEST/$mod/$rom/$DATE
				OLDS=$(readlink -f "$DEST/$mod/$rom/latest")
				#echo ${OLDS##*/}
				mkdir -p $DEST/$mod/$rom/$DATE
				for J in core framework services preloaded; do
					cd $ROOT
					grep "### $J ###" OUT.$rom \
						&& ( \cp $J.patch $NEWS ) \
						|| ( echo "keep $J"; cd $NEWS; ln -s ../${OLDS##*/}/$J.patch .; cd $ROOT )
				done
				cd $NEWS/..; \rm -f latest; ln -s $DATE latest; cd $ROOT
			else
				echo "$rom is up-to-date"
			fi
		fi
	done
done
