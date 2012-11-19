#!/bin/bash

# help functions for autopatcher

printusage_help () {
        # This could REALLY use some better formatting. Even I find it intimidating looking.
	echo "      The Auto-Patcher $VERSION"
	echo ""
	echo "usage: $0 [ROMNAME].zip [MODS] [ROMTYPE] [PATCHDATE]"
	echo ""
	echo "* [MODS] can be pdroid, pd2.0, v6supercharger, tabletUI, etc..."
        echo "MODS can be combined by separating them with a comma and NO SPACES!!!"
        echo ""
	echo "* [ROMTYPE] can be cm, aokp, aosp or pa                      [recommended]"
	echo "* [PATCHDATE] will select older patch versions, e.g 20121030    [optional]"
        echo ""
        echo " try \"$0 ROM.ZIP -h\" to see what is available"
	echo ""
	exit 
}

debug_help () {
        # From print_error. For problems decompiling or patching mostly.
	echo "! please refer to $LOG for any debugging"
	echo ""
	echo "! patching failed."
	echo "! it may be possible to patch $ROM using other patch version"
	echo ""
	cleanup
	printusage_help
}

romtype_help () {
        # From rom_error (bad romtype) and date_error (patch date w/o specifying romtype)
	echo ""
        echo "!!!There are only four supported ROMTYPES: 1) cm  2) aokp  3) aosp  4) pa"
        echo ""
        echo "Find out which of the above ROMTYPES your rom is based on and try again!"
        echo "**********************************************"
        echo ""
        cleanup
        printusage_help
}

display_help () {
        cd patches
        echo ""
        echo "AVAILABLE PATCHES"
        echo ""
        echo "Note: There are ONLY 4 ROMTYPES: [pa, cm, aokp, and aosp]."
        echo "The Auto-Patcher will automatically slot if you need aosp-jb or aosp-mod"
        echo ""
        echo "*******************************************************************"
        echo ""
        echo "Please keep in mind that the Android flavor {ics, jellybean..etc}"
        echo " is there only for your information and is not needed on the command line"
        echo ""
        find -H * -name 2012* | more -d -10
echo ""
echo "*****************************************************************"
echo ""
echo "All listed mods are currently supported. So if you only see older patches,"
echo "that simply means those early patches are still working for current roms."
echo ""
        cleanup
        printusage_help
}

