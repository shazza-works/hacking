function onloadCookie(){
	var thisSkin = $("#SkinSelector option:selected").val();
        var thisSkinCheckbox = $("div#SkinSelector input");
        var thisSkinSummary = $("div#summary div#Filter_Menu #SkinSelector option:selected").val();
        if(typeof thisSkinSummary !='undefined') {
		var filter = readCookie("filter");
		if (filter != "") {
			onloadSelector(filter);
		} else {
			writeCookie("filter", "basic_summary", 365);
		}
        }else if(thisSkinCheckbox.length !=0) {
                var filter = readCookie("checkboxfilter");
		if (filter != "") {
                        onloadSelector(filter);
                } else {
                        writeCookie("checkboxfilter", "false", 365);
                }
        } else if(typeof thisSkin !='undefined'){
		var filter = readCookie("filter");
                if (filter != "") {
	                onloadSelector(filter);
                } else {
			writeCookie("filter", "basic_summary", 365);
		}
        } else {
        }
} 

function readCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function writeCookie(cname, cvalue, expdays) {
    var d = new Date();
    d.setTime(d.getTime() + (expdays*24*60*60*1000));
    var expires = "expires="+ d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}


function onloadSelector(thisSkin) {
	$("link[href*='user_skins']").remove();
        if(thisSkin !='basic_summary' && thisSkin !='complete' && thisSkin !='high_level' && thisSkin !='mapping_friendly' && 
	   thisSkin !='false' && thisSkin !='true') {
		return;
        }
	var dropdownSelector = document.querySelectorAll("#SkinSelector");
        var checkboxSelector = document.querySelectorAll("div#SkinSelector input");
	var summarySelector = document.querySelectorAll("div#summary div#Filter_Menu #SkinSelector");

	if(summarySelector.length != 0){
                summarySelector[0].value = thisSkin;
		halfDisplay(thisSkin);
		$("head").append('<link rel="stylesheet" href="/css/user_skins/' + thisSkin + '.css" type="text/css" />');
	}
	else if(checkboxSelector.length != 0){
	    if(thisSkin == "true"){
		checkboxSelector[0].checked = true;
		$("head").append('<link rel="stylesheet" href="/css/user_skins/show_details.css" type="text/css" />');
	    }
        }
        else if(dropdownSelector.length != 0){ 
	    dropdownSelector[0].value = thisSkin;
	    halfDisplay(thisSkin);
	    $("head").append('<link rel="stylesheet" href="/css/user_skins/' + thisSkin + '.css" type="text/css" />'); 
        }
        else {
	    //nothing found to assign filter
	}
}

