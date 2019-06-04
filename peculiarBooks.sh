#!/bin/sh
title=$1
if [ "$1" = "" ]
then
	title='Miss_Peregrine%27s_Home_for_Peculiar_Children'
fi
next=$(curl --silent https://en.wikipedia.org/w/api.php\?action\=parse\&prop\=text\&page\=$title\&format\=json \
	| sed 's/\(table\)\|\(scope\)/\n/g' \
	| awk '/^=.*Followed.*by/' \
	| sed 's/^.*wiki.//g' \
	| sed 's/.".*$//g' \
)

echo $title | tr '_' ' ' | sed "s/%27/'/g"
if [ ! "$next" = "" ]
then
	sh $0 $next
fi
