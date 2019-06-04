#!/bin/sh
last=$(peculiarLast.sh)
if [ "$last" != "A Map of Days" ]
then
	notify-send -t 0 "Peculiar's last book: $last"
fi
