#!/bin/bash

# Special Instructions for trevd's 3G Dongle mod

echo "...Fixing Permissions..."
chmod 6755 system/bin/pppd >> $LOG 2>> $LOG
chmod 755 system/xbin/chat >> $LOG 2>> $LOG
chmod 755 system/bin/usb_modeswitch >> $LOG 2>> $LOG
chmod 755 system/bin/rild >> $LOG 2>> $LOG
chmod 755 system/etc/ppp/init_pppd_gprs >> $LOG 2>> $LOG
chmod 755 system/etc/ppp/ip-up-gprs >> $LOG 2>> $LOG
chmod 755 system/etc/ppp/ip-down-gprs >> $LOG 2>> $LOG

echo "For the 3G Dongle Mod" >> $LOG 2>> $LOG
echo "---------------------" >> $LOG 2>> $LOG
echo "" >> $LOG 2>> $LOG
echo "Please, Go to trevd's OP for usage. All the hard parts are now installed." >> $LOG 2>> $LOG
echo "But it will be frustrating if it doesn't work because you didn't read the" >> $LOG 2>> $LOG
echo "Troubleshooting guide!" >> $LOG 2>> $LOG
echo "" >> $LOG 2>> $LOG
sleep 2 >> $LOG 2>> $LOG
echo "http://forum.xda-developers.com/showthread.php?t=1798631" >> $LOG 2>> $LOG
