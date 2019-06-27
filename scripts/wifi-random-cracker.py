# Shazza-Works.
# V1
# Simple random guess engine for WiFi.
#
import sys

def main():
	from random import choice as c
	if len(sys.argv) <= 1:
		print (""" Shazza-Works Random Word Gen App....
		Usage = ./wifi [char-set] [number-in-pass] <['|']>Pipe
									""")
		exit(1)
	a = sys.argv[1]
	num = sys.argv[2]
	url = ""
	w = list(a)
	if num == '1':
		url = "c(w)"
	if num == '2':
		url = "c(w)+c(w)"
	if num == '3':
		url = "c(w)+c(w)+c(w)"
	if num == '4':
		url = "c(w)+c(w)+c(w)+c(w)"
	if num == '5':
		url = "c(w)+c(w)+c(w)+c(w)+c(w)"
	if num == '6':
		url = "c(w)+c(w)+c(w)+c(w)+c(w)+c(w)"
	if num == '7':
		url = "c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)"
	if num == '8':
		url = "c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)"
	if num == '9':
		url = "c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)"
	if num 	== '10':
		url = "c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)"
	if num == '11':
		url = "c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)"
	if num == '12':
		url = "c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)+c(w)"

	while 1:
		print (eval(url))

main()
