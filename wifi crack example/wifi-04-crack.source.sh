#!/bin/bash
# Wire Tap 04 800
# CTF Challenge
# Hack The Wifi Network

# Put this in the folder with 04.cap
clear
echo -e "\n"
echo -e " ██╗    ██╗██╗███████╗██╗         ██████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗██████╗ "
echo -e " ██║    ██║██║██╔════╝██║        ██╔════╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗"
echo -e " ██║ █╗ ██║██║█████╗  ██║        ██║     ██████╔╝███████║██║     █████╔╝ █████╗  ██████╔╝"
echo -e " ██║███╗██║██║██╔══╝  ██║        ██║     ██╔══██╗██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗"
echo -e " ╚███╔███╔╝██║██║     ██║        ╚██████╗██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║"
echo -e "  ╚══╝╚══╝ ╚═╝╚═╝     ╚═╝         ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝"
echo -e "========================================================================================="
echo -e "                                                                           Shazza_Works\n"
sleep 2
if [ -e 04.cap ]; then
	wpaclean crack.cap 04.cap ;
	clear ;
	aircrack-ng crack.cap ;
	sleep 2 ;
	aircrack-ng crack.cap > info
	mac=$(cat info | grep handshake | awk {'print $2'})
	echo -e "Using M.A.C. === "$mac"   \n"
	sleep 4
	clear
	crunch 8 8 -t 1337%%%% | aircrack-ng -w - -b $mac -l KEY-FOUND crack.cap
	if [ $? = 0 ]; then
		echo -e "\n\n\tShould BE DONE.....!!!!!\n\n"
		echo -e "\n\tKEY IS IN KEY-FOUND\n"
		echo -e "THANKS BOSS!"
	else
		echo -e "\n\n\t\t!!! SOME THING SHIT HAPPENED !!!\n\n"
	fi
	rm -rf info
else
	echo "!!!! 04.cap NOT FOUND !!!!"
fi
