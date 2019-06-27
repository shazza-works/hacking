#!/bin/bash

# Crack a steg pass with brute-force abd stop on pass hit.
# Made menu for file select to.
# Shazza-Works
# V1 Wend/22nd/May/2019
# You NEED Steghide installed
if [ ! -e /usr/bin/steghide ]; then
	sudo apt install steghide
fi
clear
echo -e "\n\n\t\tWhat File To Crack?\n"
select file in $(dir); do
	num=1
	file=$file
	echo
	echo -e "\n\n\tWhat PASWD List To Use?\n"
	select wordlist in $(dir); do
		echo -e "\n\tPLEASE WAIT......LOADING!!!\n"
		count=$(grep -c -F '' $wordlist);
		for x in $(cat $wordlist); do
			echo "Trying $num//$count == $x"
			steghide --extract -p $x -sf $file
			if [ $? = 1 ]; then
				echo -e "\n"
				num=$((num+1))
				continue
			else
				break
			fi
		done
		break
	done
	break
done

#grep -c -e [^*] $file
