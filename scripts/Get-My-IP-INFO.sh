#!/bin/bash
# Shazza-Works V1.0
# Script to grab your connection info from "http://ip-api.com/json/"
# All output is run through JQ [NEED JQ]

if [ `command -v jq` == '' ]; then
    echo -e "\n\e[31mYou Dont Have JQ! --  Installing Now\e[0m\n"
    sleep 3
    pkg install jq -y
else
    echo -e "\n\e[42mRetrieving INFO...\e[0m\n"
    t=`wget -O - http://ip-api.com/json/`
    echo $t | jq
    termux-clipboard-set `echo $t | jq .query`
fi

echo -e "\e[31mYour ISP is;\e[92m`echo $t | jq .isp` \e[31mYour IP is;\e[92m`echo $t | jq .query`\e[0m > IP IS NOW IN CLIPBOARD"
