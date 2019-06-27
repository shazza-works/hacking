#!/bin/bash
#########################################################################
# Shazza Works V1.00							#
# Simple addon to the server start script this one brings up the	#
# teamserver for use with amitage application.				#
#########################################################################
echo -e "\e[33m"
opt1=''
opt2=''
clear
echo " [*] You must provide: <external IP address> <team password>
           Using <port 55553> "
sleep 5
espeak "Setting up Team server Config" -s 130
read -p "Enter An IP Address (e.g. 127.x.x.x 192.x.x.x)...>" -r
opt1=$REPLY
read -p "Enter A Password To Use? (Can Be Anything)...>" -r
opt2=$REPLY
espeak "Starting teamserver now....." -s 130
teamserver $opt1 $opt2
echo -e "\e[0m"
