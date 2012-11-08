#!/bin/bash

UPDIR=META-INF/com/google/android

# Remove original updater-script
\rm $UPDIR/updater-script >> "$LOG"

# Move the template script in
\cp -v patches/devices/$DID/$UPDIR/updater-script $UPDIR >> "$LOG"

# add lines that were set with in the FILE list, from files.txt to UPDATE.txt
echo "run_program(\"/sbin/busybox\", \"umount\", \"/system\");" >> UPDATE.txt

# Append the list generated from files.txt to the new updater-script
cat UPDATE.txt >> $UPDIR/updater-script
