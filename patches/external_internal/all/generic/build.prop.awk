# SDCard mounting tweaks
/additionalmounts/ && /sdcard0/ { sub(/sdcard0/, "sdcard1/_InternalSD"); print; next; }
/switchablepair/   && /sdcard0/ { sub(/sdcard0/, "sdcard1/_InternalSD"); print; next; }

# keep rest of file as is:
{ print; }
