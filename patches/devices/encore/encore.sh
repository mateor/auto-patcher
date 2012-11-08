#!/bin/bash

echo ""
echo "*** Hello Nook User ***"
echo ""
echo "At the prompt, enter 'sdcard' for sdcard installs"
echo "Any other response will indicate EMMC"
echo ""
echo -n "Please type 'sdcard' if you are using an sdcard install: "
read SDCARD
        case $SDCARD in
		[Ss][Dd]*)
                        echo "---------------------------------------------------------------"
                        echo " You have indicated you will be using an SDcard install"
                        echo "" 
                        echo "   The update.zip will be for SDcard installs only."
                        echo ""
                        echo " You will need to use an SDcard capable recovery"
                        echo "        Look at Leapinlar's threads in"
                        echo " XDA Nook Color General forum for help choosing proper recovery."
                        echo "---------------------------------------------------------------"
                        echo ""
                        sleep 1
                        echo -n "Damn fine device, if I might be permitted. "
                        sleep 1
                        echo "Damn fine."
                        sleep 1
                        echo ""
                        echo "*** Encore.sh reply indicates an SDcard install" >> "$LOG"
                        \rm -fr META-INF >> "$LOG"
                        \cp -pr patches/devices/$DID/META-INF . >> "$LOG"
			;;
		*)
                        echo "This update.zip will only work on EMMC installs"
			;;
	esac
