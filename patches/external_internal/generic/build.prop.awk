/additionalmounts/ && /sdcard0/ { sub(/sdcard0/, "sdcard1/_InternalSD"); print; next; }
/switchablepair/   && /sdcard0/ { sub(/sdcard0/, "sdcard1/_InternalSD"); print; next; }
