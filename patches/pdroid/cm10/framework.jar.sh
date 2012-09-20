#!/bin/bash
# inherit variables from the parent script by running it as ". script.sh"

# a hack to skim down : remove vendor-specific RIL
unset GARBAGE
if [[ -n $RIL ]]; then
	if [[ $RIL == SamsungQualcommD2RIL ]]; then
		GARBAGE=($(find tmp/${FILE}.out/smali/com/android/internal/telephony/ -name "*RIL*" -a -not -name "RIL*" -a -not -name "${RIL}*" -a -not -name "SamsungQualcommUiccRIL*" -a -not -name "QualcommSharedRIL*" ))
	elif [[ $RIL == SonyQualcommRIL ]]; then
		GARBAGE=($(find tmp/${FILE}.out/smali/com/android/internal/telephony/ -name "*RIL*" -a -not -name "RIL*" -a -not -name "${RIL}*"))
	elif [[ $RIL == *Qualcomm*RIL ]]; then
		GARBAGE=($(find tmp/${FILE}.out/smali/com/android/internal/telephony/ -name "*RIL*" -a -not -name "RIL*" -a -not -name "${RIL}*" -a -not -name "QualcommSharedRIL*" ))
	else
		GARBAGE=($(find tmp/${FILE}.out/smali/com/android/internal/telephony/ -name "*RIL*" -a -not -name "RIL*" -a -not -name "${RIL}*"))
	fi
else
	GARBAGE=($(find tmp/${FILE}.out/smali/com/android/internal/telephony/ -name "*RIL*" -a -not -name "RIL*"))
fi
if [[ -n ${GARBAGE[@]} ]]; then
	echo "... remove unnecessary ${#GARBAGE[@]} files to avoid methods cap ..."
	echo "DELETE RILS= ${GARBAGE[@]}" >> "$LOG"
	\rm -rf ${GARBAGE[@]}
fi
