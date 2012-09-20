#!/bin/bash
# inherit variables from the parent script by running it as ". script.sh"

# a hack to skim down : remove vendor-specific RIL
unset GARBAGE
TELEPHONY="tmp/${FILE}.out/smali/com/android/internal/telephony/"
if [[ -z $RIL ]]; then
	GARBAGE=($(find "$TELEPHONY" -name "*RIL*" -a -not -name "RIL*"))
elif [[ $RIL == SonyQualcommRIL ]]; then # needs to be before *Qualcomm*RIL
	GARBAGE=($(find "$TELEPHONY" -name "*RIL*" -a -not -name "RIL*" -a -not -name "${RIL}*"))
elif [[ $RIL == SamsungQualcommD2RIL ]]; then
	GARBAGE=($(find "$TELEPHONY" -name "*RIL*" -a -not -name "RIL*" -a -not -name "${RIL}*" -a -not -name "SamsungQualcommUiccRIL*" -a -not -name "QualcommSharedRIL*" ))
elif [[ $RIL == *Qualcomm*RIL ]]; then
	GARBAGE=($(find "$TELEPHONY" -name "*RIL*" -a -not -name "RIL*" -a -not -name "${RIL}*" -a -not -name "QualcommSharedRIL*" ))
else
	GARBAGE=($(find "$TELEPHONY" -name "*RIL*" -a -not -name "RIL*" -a -not -name "${RIL}*"))
fi
if [[ -n ${GARBAGE[@]} ]]; then
	printtask "... remove unnecessary ${#GARBAGE[@]} files to avoid methods cap ..."
	echo "DELETE RILS= ${GARBAGE[@]}" >> "$LOG"
	\rm -rf ${GARBAGE[@]}
fi
