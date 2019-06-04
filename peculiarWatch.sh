#!/bin/sh
last=$(peculiarLast.sh)
# to update the script move on the line below and hit `0llD@"`
# p:r!peculiarLast.shD3f"vi"pkdd
if [ "$last" != "A Map of Days" ]
then
	notify-send -t 0 "Peculiar's last book: $last"
fi
