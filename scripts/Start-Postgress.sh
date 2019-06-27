#!/data/data/com.termux/files/usr/bin/env bash   #SET TO EXPORT ALL
##################################################################
# Shazza-Works 9/02/18                                           #
# Stript to setup start postgresql on Termix.               V2   #
##################################################################
# using pg_ctl you can start/stop/reload/restart
# pg_ctl reload -D
# pg_ctl status -D
# pg_ctl start -D /data_directory_path/
# pg_ctl -w stop -D /data_directory_path/
# pg_ctl -o "-F -p 5432" start -D
# pg_ctl restart -D /data_directory_path/
# pg_ctl -w restart -D
# pg_ctl -o "-F -p 5432"
# pg_ctl status -D
#
#
export home=$HOME		  # Set home
export PGDATA=$home/database	  # Set postgress working dir
def_db=$home/database		  # db-files
name=`whoami` 			  # Me!
clear ; ls			  # Clear + List dir
# Maybe you want to set your own?
function check_files {
	if [ ! -d "$def_db" ]; then
		echo -e "\n"
		create_new ; wait
	else
		wipe_old ; wait
	fi
}

function check_server {
	pg_ctl status -D $def_db
}

function choose_port {
	read -p "Do you want a different port? [def=5432][y/n]" -n 1 -r port
	if [[ $port =~ ^[Yy]$ ]]; then
		echo -e "\n"
		read -p "Enter New Port> " -r port
	else
		port=5432
	fi
}

function create_new {
	read -p "You Will Need To Make Files? [Y/y]" -n 1 -r create
	if [[ $create =~ ^[Yy]$ ]]; then
		mkdir $home/database
		echo -e "\n DB Made @"$def_db" \n"
		initdb /$def_db ; wait
		choose_port ; start_server
	else
		echo -e "\n Files --Left--"
		echo -e "\n\tCant Start With No Files!\n\t   Going to <Exit>\n"
		exit
	fi
}

function wipe_old {
	echo -e "\n"
	read -p " Clear!!! home/DB files for Fresh bd> [Y/y] Try and start current home/DB> [N/n] " -n 1 -r damsure
	echo -e "\n"
	if [[ $damsure =~ ^[Yy]$ ]]; then
		echo -e "\n Will Wipe Old Db_Files... \n"
		sleep 4
		rm -rf $home/database/*
		echo -e "\n File's Cleaned \n"
		initdb /$def_db ; wait
		choose_port ; start_server
	else
		choose_port ; start_server
	fi
}

function start_server {
	pg_ctl -o "-p $port" -D /$def_db -l $def_db/db_logfile start ; wait
	echo -e "\n The Server Info..."
	check_server
}

function stop_server {
	pg_ctl -D $def_db'/' -m fast stop ; wait
}

check_files ; wait

while true; do
	echo -e "\nNow Go And Start MSF or Use The Db\n"
	read -p  "Then When You Are Ready... [Qq]=Kill-Server+Exit [Xx]=Exit-While-Running> " -n 1 -r quitty
	if [[ $quitty =~ ^[Xx]$ ]]; then
		echo -e "\n You Are Quitting With Db Running...\n "
		echo -e " You Can Stop With [pg_ctl -D /db/files -m fast stop]\n"
		break
	elif [[ $quitty =~ ^[Qq]$ ]]; then
		stop_server ; wait
		break
	fi

done
echo -e "\n\n\tTHANK-YOU FOR USING A SHAZZA TOOL...\n\n"
exit
work through the logic of this
