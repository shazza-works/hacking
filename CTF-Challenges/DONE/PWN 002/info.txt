Pwn 02
200

Mr. Pwnage is back again, and this time it seems like he's putting a bit more effort into securing his services. Our team managed to find the password needed to take control over the service
Password: MyV3ryS3cur3Passw0rd!

Try to find the service between 40000 and 60000 and see what you can do 


Hint

To use the password, you must be quick!


                                             .  
root@slaptop:~/Downloads/CTF-Challenges/PWN 002# nmap 104.40.199.30 -p 50000-60000
Starting Nmap 7.70 ( https://nmap.org ) at 2019-05-26 21:09 BST
Nmap scan report for 104.40.199.30
Host is up (0.077s latency).
Not shown: 10000 filtered ports
PORT      STATE SERVICE
57846/tcp open  unknown

Nmap done: 1 IP address (1 host up) scanned in 145.45 seconds


root@slaptop:~/Downloads/CTF-Challenges/PWN 002# nc 104.40.199.30 57846
 > hello
You need some more speed and accuracy
root@slaptop:~/Downloads/CTF-Challenges/PWN 002# nc 104.40.199.30 57846 <<< $(echo "MyV3ryS3cur3Passw0rd!")
 > The flag is {B3_Qu1ck}
root@slaptop:~/Downloads/CTF-Challenges/PWN 002# 


