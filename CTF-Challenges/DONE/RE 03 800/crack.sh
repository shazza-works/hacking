#!/bin/bash
# Shazza-Works
# sort out wordlist
# CTF RE 03 800
# Just put this in the folder with {g0ne} {wordlist.zip}, make +x and ./run it..
# OR just [bash crack.sh]

unzip wordlist.zip

if [ ! -x g0ne ]; then
	chmod +x g0ne
fi

cat wordlist > wordlist.cp # make a copy

for i in $(cat wordlist.cp); do # read wordlist
	pass=$i
	if [ ${#pass} == 8 ]; then # as per info KEY is {{8}}
		echo $i >> temp898 # save
	fi
done

cat temp898 | sort | uniq > wordlist # sort and past to wordfile
rm -rf temp898
rm -rf wordlist.cp
./g0ne # RUN AND CRACK
