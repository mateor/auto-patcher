# SDCard mounting tweaks
/emmc \/storage\/sdcard0/ { sub(/\/storage\/sdcard0/, "/storage/sdcard1/_InternalSD"); print; next; }

# keep rest of file as is:
{ print; }
