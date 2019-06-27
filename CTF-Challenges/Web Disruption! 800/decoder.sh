#!/bin/bash

while read -p "Enter Code 64> " -r code
do
	echo $code | base64 -i -d ; echo -e "\n\r"
done

