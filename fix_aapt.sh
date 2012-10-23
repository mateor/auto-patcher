#!/bin/bash

tar xvzf patch_tools.tgz
chmod +x mac/aapt
chmod +x cygwin/aapt.exe
chmod +x linux/aapt

tar cvzf patch_tools.tgz boot cygwin linux mac apktool.jar baksmali.jar signapk.jar smali.jar updatecert.pem updatekey.pk8
