#!/bin/bash

 export JAVA_HOME="/usr/java/jdk1.6.0_26"
 DATE=`date +"%Y%m%d"`
 REPO=$HOME/bin/repo
 BASE=$HOME
 KANG=$BASE/android
 MODS=$BASE/mods/pdroid/cm10
 SAVE=$HOME/auto-patcher/diff_tools/built/pdroid/cm10
 DEVC=maguro
 [[ $# > 0 ]] && DEVC=$1
 PLTF=cm_${DEVC}-userdebug

 # revert to stock
 cd $KANG/build && git checkout . && git clean -df
 cd $KANG/libcore && git checkout . && git clean -df
 cd $KANG/frameworks/base && git checkout . && git clean -df
 cd $KANG && $REPO abandon pdroid
 cd $KANG && $REPO sync -j16

 # build stock
 cd $KANG && make clobber
 cd $KANG && . build/envsetup.sh && lunch $PLTF && make core services framework framework2 >& OUT.$DATE || exit
 \rm -rf $SAVE/stock.$DATE.$DEVC
 \cp -a $KANG/out/target/product/$DEVC/system/framework $SAVE/stock.$DATE.$DEVC

 # apply pdroid patch
 cd $KANG/build && git checkout -b pdroid && patch --no-backup-if-mismatch -p2 < $MODS/build.diff || exit
 cd $KANG/libcore && git checkout -b pdroid && patch --no-backup-if-mismatch -p2 < $MODS/libcore.diff || exit
 cd $KANG/frameworks/base && git checkout -b pdroid && patch --no-backup-if-mismatch -p3 < $MODS/frameworks.diff || exit

 # build pdroid
 cd $KANG && make clobber
 cd $KANG && . build/envsetup.sh && lunch $PLTF && make core services framework framework2 >& LOG.$DATE || exit
 \rm -rf $SAVE/pdroid.$DATE.$DEVC
 \cp -a $KANG/out/target/product/$DEVC/system/framework $SAVE/pdroid.$DATE.$DEVC

