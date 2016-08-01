$("document").ready(function(){
    $("#useCoin").focus();
    $(".acount,.gift").fadeOut(0);
	$("#useCoin").click(function(){
		$(".useCoin").fadeIn();
        $(".coinCenter section:not(.useCoin)").fadeOut(0);
	});
	$("#acount").click(function(){
		$(".acount").fadeIn();
        $(".coinCenter section:not(.acount)").fadeOut(0);
	});
	$("#gift").click(function(){
		$(".gift").fadeIn();
        $(".coinCenter section:not(.gift)").fadeOut(0);
	});
})	