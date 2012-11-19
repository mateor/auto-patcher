#!/bin/bash

# Error functions for autopatcher

print_error () {
        # General purpose error. Used for errors in main, as opposed to probe or set-up.
        echo ""
	printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	printtask "!!! error: $@"
	printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo ""	
	debug_help
}

smali_error () {
        # Smali binary error. Problem often goes away on second run.
        echo ""
	printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	printtask "!!! error: $@"
	printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        echo ""
        if [[ `grep 'method index is too large' "$LOG"` != "" ]]; then
                printtask "!!! Problem with method cap !!!"
                printtask "... attempting fix ..."
		. patches/common/framework.jar.sh 2>&1 > ${JAR}.log
                printtask "... rebuild framework.jar ..."
                java -Xmx512M -jar smali.jar -a $API tmp/${FILE}.out/smali -o tmp/${FILE}.out/classes.dex >> "$LOG" 2>> "$LOG"
		[ -f tmp/${FILE}.out/classes.dex ] || print_error "Could not resolve method cap issue- please submit log"
        else
                printtask "!!! This error is generally due to an unknown bug in the smali binary!"
                echo "In our experience, it goes away if you run the patcher a second time."
                echo " Please run the Auto-Patcher with the same command once again."
                echo ""
                echo "If after the third attempt the same thing happens,"
                echo " please upload your logfile to our support thread!"
                echo ""
	        cleanup
                exit
        fi
}

date_error () {
        # Remind users to include a romtype if they are going to specify a patch date
        echo ""
	printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	printtask "!!! error: $@"
	printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo ""
        echo "Please put a ROMTYPE before the patch date and run again!!"
        romtype_help
}

rom_error () {
        # For when an unsupported romtype is manually entered on the command-line
        echo ""
	printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	printtask "!!! error: $@"
	printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        romtype_help
}

misspatch_error () {
        printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        printtask "!! error: $@ "
        printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        echo ""
        printtask "!! The Auto-Patcher could not find its patches and/or tools!"
        echo ""
        echo "* Did you run ./batch.sh first?"
        echo ""
        echo "The patch_patches.tgz and patch_tools.tgz need to be in this directory,"
        echo "  one way or another..."
        echo ""
        cleanup
        printusage_help
}

misstools_error () {
        printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"        
        printtask "!! error: $@ "
        printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        printtask "Your set-up is missing a dependency." 
        echo "We require JDK, patch and cpio."
        echo ""
        echo ""
        echo "Each distro is different"
        echo "but you must ensure you have them all installed and try again."
        echo ""
        cleanup
        printusage_help
}

mismatch_error () {
        # Function that exposes attempts to apply a mod to an upsupported Android version
        echo ""
	printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	printtask "!!! error: $@"
	printtask "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo ""
        cleanup
	printusage_help
}
