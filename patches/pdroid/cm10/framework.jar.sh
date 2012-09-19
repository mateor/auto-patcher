#!/bin/bash
# inherit variables from the parent script by running it as ". script.sh"

# a hack to skim down : remove vendor-specific RIL
unset GARBAGE
if [[ -n $RIL ]]; then
	GARBAGE=($(find tmp/${FILE}.out/smali/com/android/internal/telephony/ -name "*RIL*" -a -not -name "RIL*" -a -not -name "${RIL}*"))
else
	GARBAGE=($(find tmp/${FILE}.out/smali/com/android/internal/telephony/ -name "*RIL*" -a -not -name "RIL*"))
fi
if [[ -n ${GARBAGE[@]} ]]; then
	echo "... remove unnecessary ${#GARBAGE[@]} files to avoid methods cap ..."
	echo "DELETE RILS= ${GARBAGE[@]}"
	\rm -rf ${GARBAGE[@]}
fi
