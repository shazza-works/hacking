

clear


echo -e "\n\tWhat Word-List To USE?\n>>>"
select yXy in *
do
	pass_list=$yXy
	echo -e "\n\n\tWhat pdf file to CRACK?\n>>>"
	select xYx in *
	do
		crack_file=$xYx
		for x in $(cat $pass_list)
		do
			echo -e "Trying>>>\t"$x
			qpdf --password=$x --decrypt $crack_file PWND.pdf ;
		done
	done
done
