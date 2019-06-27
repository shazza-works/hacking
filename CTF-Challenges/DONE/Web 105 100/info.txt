
    Challenge
    2 Solves

Web 105
100

The group opened the board for all visitors to participate in efforts to 
hide their real communication but it seems it may have not been implemented 
in a secure manner. Can you visit the site and find the vulnerability?


CLICK HERE


httpURLConnection.setRequestProperty(
    "Cookie","JSESSIONID=" + your_session_id);   ?????

==== FOUND ====
HTTP/1.1 200 OK
Date: Tue, 28 May 2019 16:34:37 GMT
Server: Apache
Set-Cookie: PHPSESSID=p99k5cp7n2t6kfipf8jkoh7i90; path=/
Expires: Thu, 19 Nov 1981 08:52:00 GMT
Cache-Control: no-store, no-cache, must-revalidate
Pragma: no-cache
Vary: Accept-Encoding

would make URL =

httpURLConnection.setRequestProperty(
    "Cookie","JSESSIONID=" + p99k5cp7n2t6kfipf8jkoh7i90);
!!!_DID NOT WOR_!!!!


***** THIS HAS SOMETHING TO DO WITH IT I DOUND HINTS TO ITS USE *****

function check(form){
 
 title = form[0].value; 
 content = form[1].value;

 titleT = title.startsWith("\<script\>") || title.endsWith("\<\/script\>");
 contentT = content.startsWith("\<script\>") || content.endsWith("\<\/script\>")

 if( titleT || contentT ){
     alert("Malicious Query Detected!");
     return false;
 }
 else{
     $.ajax({
         url: "check.php",
         type: "post",
         data: {Title: title, Content: content},
         success: function (data) {
             if(data != 0){  
                 $(".container").prepend(data);
                 shown = true;
             }
         },
     });             
 }       

 response = $('#responses');
 
 html = "<div class='jumbotron'>"
 html += '<div class="media">';
 html += '<img class="col-sm-2" src="assets/avatar.png" alt="Avatar">';
 html += '<div class="media-body">';
 html += '<h5 class="mt-0">' + title + '</h5>';
 html += '<p>' + content + '</p>';
 html += '</div> </div></div>';

 response.append(html);
 
}


====================================================================================================================
ON_PAGE

Using this...
________________________CMD_USED__________________________
========================================================================================
php echo "<h2>PHP is Fun!</h2>"; echo "Hello world!<br>"; echo "I'm about to learn PHP!<br>"; echo "This ", "string ", "was ", "made ", "with multiple parameters."; ?> 
========================================================================================

MADE...

php echo "
PHP is Fun!
"; echo "Hello world!
"; echo "I'm about to learn PHP!
"; echo "This ", "string ", "was ", "made ", "with multiple parameters."; ?>

php echo "
PHP is Fun!
"; echo "Hello world!
"; echo "I'm about to learn PHP!
"; echo "This ", "string ", "was ", "made ", "with multiple parameters."; ?>

ALL THIS WAS HTML FORMATTED SAYING THAT IT READ THE CODE AND WAS HAPPY TO RESPOND TO COMMANDS !!!!

GREAT !!!

NOW I JUST NEED TO FING A CMD TO PRODUCE THE OUTPUT I WANT <<FLAG>>

AS ATTACK_LABS SAID THERE IS A CHECK() FUNCTION THAT SEEMS TO RUN AND WITH NO MODS RETURNS;;
ONE LINE WITH NUMBERING AND A VALUE OF < '0' > ZERO.
THIS HAS TO BE TO DO WITH THE FORM LOGIC.

NEED TO LOOK AT SCRIPT LOGIC!!!! N.B.

======RUNDOWN=======
1> its php
2> its a cmd injection
3> there is a check() function involved
4> <script> tags are rejected
5> the PHP commans are formatted with HTML Tags!

THATS IT SO FAR......

HAHAHAHAHAHAH YOUR WAY OFFFFFF!!!!!


