
    Challenge
    1 Solves

Web 106
200

The Group returned to using the login form from the first challenge, but it seems 
they have improved their security, we need you to login by any means.


CLICK HERE

So i think we are looking at a XSS attack on this one with a bit of progress mad already....


vic.hackersacademy.com/web06/index.php?username='admin'&password=<script>alert("You A Shazza? $response $check");</Script> --

SO far the 2x end Values Dont Show!!!

This; gives a Print NOTICE that i have crafted...

Now only to get it to frint the FLAG!!!
========================================================
[']<script>alert(document.cookie);</script>		Makes the PHPSESHID pop up on alert How to do the flag!!?
========================================================
