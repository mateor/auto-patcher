#!/bin/bash

python ~/android/auto3/ap_scripts/split_patch_opd.py

files=(*_*_*patch)
echo "files are ${files[@]}"

wanted_patches=( "*ContextImpl*patch" "*Instrumentation*patch" "*ContentResolver*patch" "*Camera*patch" "*NetworkInfo*patch" "*SystemProperties*patch" "*Settings*patch" "*MicrophoneInput*patch" "*AudioRecord*patch" "*MediaRecorder*patch" "*preloaded-classes*patch" "*IPrivacy*patch"  "*Privacy*patch" "*BroadcastQueue*patch" "*PhoneStateListener*patch" "*ServiceState*patch" "*WifiInfo*patch" "*ProcessManager*patch" "*HttpUtils*patch" "*ServerThread*patch" "*TelephonyRegistry*patch" "*CDMAPhone*patch" "Cdma*patch" "*Ruim*patch" "*GSMPhone*patch" "*GsmServiceStateTracker*patch" "*SimSmsInterfaceManager*patch" "*VoiceMailConstants*patch" "*PhoneFactory*patch" "*RIL*Sender*patch" "*Sip*patch" "*SMSDispatcher*patch" "*IccSmsInterfaceManager*patch")
for f in ${files[@]}; do
     for w in ${wanted_patches[@]}; do
           if [ $f == $w ]; then
               echo "$f is bomb!"
               files=( ${files[@]//$f} )
               #unset ${files["$f"]}
               break
           fi
     done
done

for g in "${files[@]}"; do
     echo "$g"
     rm -v "$g"
done
