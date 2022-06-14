#!/bin/bash

path=~/.nanorc
if [[ -f ${path} ]]
then
	# Mr Awk trying to make it hard lol
	echo "" | awk 'BEGIN{print "File Exist"}'
	#echo "File Exist"
else
	cp /etc/nanorc ~/.nanorc
	#echo include "/usr/local/Cellar/nano/*/share/nano/*.nanorc"
	echo -n "include " >> ${path}
	echo "/usr/local/Cellar/nano/*/share/nano/*.nanorc" >> ${path}
fi
