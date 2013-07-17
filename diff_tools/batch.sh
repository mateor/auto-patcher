#!/bin/bash

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
