# remove time stamp
/^--- stock_/  { print $1 " " $2; next; }
/^+++ moded_/ { print $1 " " $2; next; }

# convert obsolete form
/^diff -Npru /  { sub(/diff -Npru /, "diff -NpruEbB "); }
/stock-/  { sub(/stock-/, "stock_"); sub(/moded-/, "moded_"); print; next; }

# keep rest of file as is:
{ print; }
