#!/bin/bash
#########################################################################
# Shazza-Works Code_🐂							#
# CTF Killer APP							#
# Will Do all 3 of the Kung-Foo Tasks					#
# All auto to the screen with user choice.				#
# V0.01									#
#									#
#########################################################################
function kungfoo_1 {
	echo -e "⚪ ## MISSION 001 ## Kung-Fu 01 pts 100\n"

	read -p "⚪ Do You Want To See LV_1 Clue...❓ [y/n]" -n 1 -r ans
	if [[ $ans =~ ^[Yy]$ ]]; then
		echo ""
		echo -e "\n⚪ Connecting to SSH on CTF...\n\tMay Take A Sec...\n"
		sshpass -p 'n1nja_kitten' ssh kitten@104.40.199.30 'cd ../kitten; ls -all; echo -e "\n\tWHAT LOOKS ODD TO YOU IN HERE...??? \n"'
		echo -e "\n\t⚪ This File is in Kitten Home and ssh servers always give each user their own space!"
		echo -e "\t⚪ You shold stay in ~/kitten dir and look around❗"
	fi

	echo -e "\n"
	echo "⚪ Press Enter...>"
	read -r

	read -p "⚪ SOLVE THIS TASK 1.....NOW❓ [y/n]" -n 1 -r ans
	if [[ $ans =~ ^[Yy]$ ]]; then
		echo -e "\n"
		echo -e "\n⚪ Connecting to SSH on CTF...\n\tMay Take A Secs....\n"
		out=$(sshpass -p 'n1nja_kitten' ssh kitten@104.40.199.30 'cd ../kitten; cat ...') ; grep -i Flag <<<$out
		# will print flag here
		echo -e "\n\t⚪ HINT You dont get any dirs called '...'  in Linux ❗❗\n"
	else
		echo -e "\n"
	fi
}

function kungfoo_2 {
	echo -e "⚪ ## MISSION 002 ## Kung-Fu 02 pts 200\n"

	read -p "⚪ Do You Want To See LV_2 Clue...❓ [y/n]" -n 1 -r ans
	if [[ $ans =~ ^[Yy]$ ]]; then
		echo -e "\n\n⚪ Connecting to SSH on CTF...\n\tMay Take A Sec...\n"
		sshpass -p 'n1nja_kitten' ssh kitten@104.40.199.30 'cd ../alien ; ls' ; echo -e "\n\tYOU SHOULD BE LOOKING HERE...❗❗\n"
		echo -e "\n\t⚪ This File is in the ~/alien dir aka (home) that you would go to if you SSH to alien@host❗"
		echo -e "\t⚪ Go and have another look before you solve if you like just say no to solve ?"
		echo -e "\t⚪ Hint may want to look through the data in some files and remove all the trash?❗"
	fi

	echo -e "\n"
	echo -e "⚪ Press Enter...>"
	read -r # HOLD

	read -p "⚪ SOLVE THIS TASK2.....NOW❓ [y/n]" -n 1 -r ans
	if [[ $ans =~ ^[Yy]$ ]]; then
		echo -e "\n"
		echo -e "\n⚪ Connecting to SSH on CTF...\n\tMay Take A Sec...To Sratch the Flag...\n"
		out=$(sshpass -p 'n1nja_kitten' ssh kitten@104.40.199.30 'strings -n 10 ../alien/catz.jpg') ; grep -i Flag <<<$out
		# will print flag here
		echo -e "\n"
		echo -e "You could have done the task with this command == 'strings -n 10 ../alien/catz.jpg'\n"
	else
		echo -e "\n"
	fi
}

function kungfoo_3 {
	echo -e "⚪ ##  MISSION 003 ## Kung-Fu 03 pts 800\n"
	sleep 2
	read -p "⚪ Do You Want To See The Info...❓ [y/n]" -n 1 -r ans
	if [[ $ans =~ ^[Yy]$ ]]; then
		echo -e "\n"
		m3help # func
	fi

        echo -e "\n"
        echo "⚪ Press Enter...>"
        read -r
	read -p "⚪ SOLVE THIS TASK3.....NOW? [y/n]" -n 1 -r ans

	if [[ $ans =~ ^[Yy]$ ]]; then
		clear
		echo -e "\n⚪ DID YOU THINK IT WOULD BE THAT EASY❓❓ ;-]\n"
		echo -e "\n\t⚪ ...AS THIS ONE IS 800 POINTS YOU CAN HAVE A GO FIRST...\n"

		echo "⚪ Press Enter...>"
		read -r # HOLD

		echo -e "\n\t⚪ Here Is Some Info That Will Help You Solve This...\n"
		sleep 2
		really_stuck #func
		echo -e "\n"
	else
		echo -e "\n"
	fi
}

function exit_app {
	clear ; exit
}

function really_stuck {
	echo -e "⚪ <HINT> (YOU NEED SOME BASH SKILLS....)"
	sleep 2 	# Now open web page's in the firefox
	echo -e "\n⚪ Want to See The Web Pages?\n"

        read -p "⚪ Do You Want To See The WEB Pages To Help You...❓ [y/n]" -n 1 -r ans
        if [[ $ans =~ ^[Yy]$ ]]; then
		xterm -e firefox --new-tab https://linux.die.net/man/1/diff/ --new-tab https://www.cyberciti.biz/faq/bash-for-loop/ http://www.princessbikinis.com/000-super/super-micro-bikini.html &
		# firefox --sync --new-tab 'https://www.cyberciti.biz/faq/bash-for-loop/' &
		echo ""
		echo -e "\n\n\t⚪ OKAY so you just seen that diff gives the differance in a set of 2 files...
			\tBut we want to do this over a set of files more than the 2 that diff is asking for!!!
			\t If you put the two of these bits of info together and see what you can do...
			\t worst case you can go to the NEXT step and HAVE the answer???\n
			\t Oh and Sorry About The Kini-URL !! I found it funny!!"
	else
		echo -e "\n"
	fi

	read -p "⚪ REALLY SOLVE THIS NOW?.....NOW❓ [y/n]" -n 1 -r ans
	if [[ $ans =~ ^[Yy]$ ]]; then
		echo -e "\n"
		correct="spliff187"
		while read -s -p "⚪ HAHAHA PASSWD PLS 🔒> " password
		do
			if [[ $correct == $password ]]; then
				shazza_welcome
				solve_3
			elif [[ ! $correct == $password ]]; then
				echo -e "\n\t🔒 You Need The Password ❗- Shazza-Works (Or Guess (smoke murder !) ;-/ )! \n\t\t;-{{ "
			else
				exit
			fi
		done

	fi
}

function shazza_welcome {
	echo -e "⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪"
	echo -e "⚪███████╗██╗  ██╗ █████╗ ███████╗███████╗ █████╗ ⚪"
	echo -e "⚪██╔════╝██║  ██║██╔══██╗╚══███╔╝╚══███╔╝██╔══██╗⚪"
	echo -e "⚪███████╗███████║███████║  ███╔╝   ███╔╝ ███████║⚪"
	echo -e "⚪╚════██║██╔══██║██╔══██║ ███╔╝   ███╔╝  ██╔══██║⚪"
	echo -e "⚪███████║██║  ██║██║  ██║███████╗███████╗██║  ██║⚪"
	echo -e "⚪╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝⚪"
	echo -e "⚪    🐂🐂🐂___Shazza-Works___V1.01___🐂🐂🐂      ⚪"
	echo -e "⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪⚪"
}

function m3help {
	echo -e "\n\t\t⚪ M4dN1nja is a unique mastermind, he always tries to differentiate himself from others. Although M4dN1nja loops through
		the same procedures for many times, he always finds a way to be different. This time he's playing games, with another
		user account. Do your best!\n ***IT'S GOING TO BE THERE SOMEWHERE, HOW TO FIND? (*WHY SO MANY❓*)"
}

function apps {
	clear
	echo -en "\n\n\t⚪ Will now check install for the tools needed to RUN...\n\n\tWORKING...."
	sleep 2
	if [ ! -e '/usr/bin/sshpass' ]; then
		sudo apt install sshpass --yes
	else
		echo -e "\tDONE ✅✅✅\n"
	fi
}

function solve_3 {
	echo -e "-bash-4.4$
          		:
			:..>>>>>USE  for i in ./*; do diff -q "$i" known-file; done"
	echo -e "\n\n\n\t⚪ YOU JUST GOT 800 PTS 'M'FOCKER❗❗❗\n\n"
	echo -e "\n\t⚪ Where Known-File is one you know❗\n"
	exit
}
#############################################################
################# MAIN START ################################
#############################################################
clear
# CALLS
apps # Check You Got The Apps <Here
shazza_welcome

echo -e "\n\n\t⚪ What Mission Do You Want To Look At...❓\n"

# Logic - Look Up CASE More !!
proto='KungFoo_1 KungFoo_2 KungFoo_3 ExitApp'
select answ in $proto; do
	case $answ in
		KungFoo_1)
			kungfoo_1;;
		KungFoo_2)
			kungfoo_2;;
		KungFoo_3)
			kungfoo_3;;
		ExitApp)
			exit_app;;
		*)
			echo "⛔ What The FUCK Was That❓";;
	esac
done
################################################################################
#############################===END===##########################################
################################################################################
