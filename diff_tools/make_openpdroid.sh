#!/bin/bash

# This script just makes the modules needed for patches. Replace the variables
#  with your info. Can be run for a DEVC, e.g. ./make_openpdroid maguro


 DATE=`date +"%Y%m%d"`
 REPO=$HOME/bin/repo
 BASE=$HOME

# Edit to match your info...note: MODS=patch location.
  KANG=$BASE/android/system
  ANDR=4.2
  ROMTYPE=cm
  DEVC=maguro
  MODS=$BASE/patches/openpdroid/

 SAVE=$HOME/auto-patcher/diff_tools/built/openpdroid/$ANDR/$ROMTYPE
 [[ $# > 0 ]] && DEVC=$2

# aokp needs testing...should add Slim, PA, and Ever.
 case $ROMTYPE in
   cm)
     PLTF=cm_${DEVC}-userdebug
     ;;
   aosp)
     PLTF=full_$DEVC-userdebug
     ::
   aokp)
     PLTF=aokp_$DEVC-userdebug
     ::
 esac

 # revert to stock
 cd $KANG/build && git checkout . && git clean -df
 cd $KANG/libcore && git checkout . && git clean -df
 cd $KANG/frameworks/base && git checkout . && git clean -df
 cd $KANG/frameworks/base/telephony && git checkout . && git clean -df
 cd $KANG/packages/apps/Mms && git checkout . && git clean -df
 cd $KANG && $REPO abandon openpdroid
 cd $KANG && $REPO sync -j16

 # build stock
 cd $KANG && make clobber
 cd $KANG && . build/envsetup.sh && lunch $PLTF && make core services framework framework2 telephony-common Mms >& OUT.$DATE || exit
 \rm -rf $SAVE/stock.$DATE.$DEVC
 \cp -a $KANG/out/target/product/$DEVC/system/framework $SAVE/stock.$DATE.$DEVC

 # apply pdroid patch
 cd $KANG/build && git checkout -b openpdroid && patch --no-backup-if-mismatch -p2 < $MODS/openpdroid_4.2.1_build.diff || exit
 cd $KANG/libcore && git checkout -b openpdroid && patch --no-backup-if-mismatch -p2 < $MODS/openpdroid_4.2.1_libcore.patch || exit
 cd $KANG/frameworks/base && git checkout -b openpdroid && patch --no-backup-if-mismatch -p3 < $MODS/openpdroid_4.2.1_frameworks_base.patch || exit
 cd $KANG/frameworks/opt/telephony && git checkout -b openpdroid && patch --no-backup-if-mismatch -p3 < $MODS/openpdroid_4.2.1_frameworks_opt_telephony.patch || exit
 cd $KANG/packages/apps/Mms && git checkout -b openpdroid && patch --no-backup-if-mismatch -p3 < $MODS/openpdroid_4.2.1_packages_apps_Mms.patch || exit

 # build pdroid
 cd $KANG && make clobber
 cd $KANG && . build/envsetup.sh && lunch $PLTF && make core services framework framework2 telephony-common Mms >& LOG.$DATE || exit
 \rm -rf $SAVE/openpdroid.$DATE.$DEVC
 \cp -a $KANG/out/target/product/$DEVC/system/framework $SAVE/openpdroid.$DATE.$DEVC


# It is old and not pretty, but it works. I will make this a LOT better when I get time.
