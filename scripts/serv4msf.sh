#!/bin/bash
###################################################################
# Code By Shazza Works						  #
# Email; ogormanad@googlemail.com				  #
# Simple talkting start servers script for MfS-Console.		  #
# Espeak to be Installed. If NOT!				  #
# Added Prompt for Start MSF.					  #
###################################################################
echo -e "\e[33m"
service postgresql start;
echo -e "postgresql...............\e[32mService Started\e[0m"
espeak "post g.r.e. sql.............Service Started" -s 130
echo -e "\e[33m"
service apache2 start;
echo -e "apache2..................\e[32mService Started\e[0m"
espeak "apache2..................Service Started" -s 130
espeak "Do You Want To Start MSF Console Now?" -s 130
echo -e "\e[36m"
read -p "Do You.....? [Y/N-y/n]"
echo -e "\e[33m"
if [[ $REPLY =~ ^[Yy]$ ]]; then
espeak "Starting.....M.S.F..... Please Wait." -s 130
	msfconsole;
fi
echo -e "\e[31m"
echo "Press Enter...."
echo -e "\e[33m"
