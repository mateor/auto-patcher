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


# This allows to pass arguments, so can split AND remove files at once.
if [ $# -gt 0 ]; then
     for FILE in $@; do
          args+=($FILE)
     done
     args=( ${args[@]//*'split_patch'*} )
fi

python ~/android/auto-patcher/ap_scripts/split_patch_mod.py ${args[@]}

files=(*_*_*patch)
echo "files are ${files[@]}"

# TODO make sure there is only one of each, as in delete all old ${smali}.patches before splitting.

wanted_patches=( "*preloaded*" "*ContextImpl*patch" "*Instrumentation*patch" "*ContentResolver*patch" "*Camera*patch" "*NetworkInfo*patch" "*SystemProperties*patch" "*Settings*patch" "*MicrophoneInput*patch" "*AudioRecord*patch" "*MediaRecorder*patch" "*preloaded-classes*patch" "*IPrivacy*patch"  "*Privacy*patch" "*BroadcastQueue*patch" "*PhoneStateListener*patch" "*ServiceState*patch" "*WifiInfo*patch" "*ProcessManager*patch" "*HttpUtils*patch" "*ServerThread*patch" "*TelephonyRegistry*patch" "*CDMAPhone*patch" "Cdma*patch" "*GSMPhone*patch" "*GsmServiceStateTracker*patch" "*SimSmsInterfaceManager*patch" "*VoiceMailConstants*patch" "*PhoneFactory*patch" "*RIL*Sender*patch" "*Sip*patch" "*SMSDispatcher*patch" "*IccSmsInterfaceManager*patch")
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
