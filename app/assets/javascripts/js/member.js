$("document").ready(function(){
    $("#order").focus();
    $(".refound,.edit").fadeOut(0);
	$("#order").click(function(){
		$(".order").fadeIn();
        $(".memberCenter section:not(.order)").fadeOut(0);
	});
	$("#refound").click(function(){
		$(".refound").fadeIn();
        $(".memberCenter section:not(.refound)").fadeOut(0);
	});
	$("#edit").click(function(){
		$(".edit").fadeIn();
        $(".memberCenter section:not(.edit)").fadeOut(0);
	});
})	