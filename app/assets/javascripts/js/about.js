$(document).ready(function(){

	$(".tabContent").slideUp(0)
	for(i=0;i<$(".straightTab").length;i++){
		$(".straightTab:eq("+i+")").click({id:i},function(e){
			$(".tabContent:eq("+e.data.id+")").slideToggle(300)
            
            $(".straightTab i:eq("+e.data.id+")").css("transform"," rotate(180deg)")
			$(".tabContent:not(.tabContent:eq("+e.data.id+"))").slideUp(300)
			$(".straightTab:eq("+e.data.id+")").addClass("active")
			$(".straightTab:not(.straightTab:eq("+e.data.id+"))").removeClass("active")
           
            if($(".straightTab i:eq("+e.data.id+")").hasClass("bt-plus")){
                $(".straightTab i:eq("+e.data.id+")").addClass("bt-minus").removeClass("bt-plus")
                $(".straightTab i:not(.straightTab i:eq("+e.data.id+"))").removeClass("bt-minus").addClass("bt-plus")
            }else{
                $(".straightTab i:eq("+e.data.id+")").addClass("bt-plus").removeClass("bt-minus")
                $(".straightTab i:not(.straightTab i:eq("+e.data.id+"))").removeClass("bt-minus").addClass("bt-plus")
            }
		})
		
		
	}

    $("#buyerNotice").focus();
    $(".payNotice,.refoundNotice,.shipNotice").fadeOut(0);
	$("#buyerNotice").click(function(){
		$(".buyerNotice").fadeIn();
        $(".payNotice,.refoundNotice,.shipNotice").fadeOut(0);
	});
	$("#payNotice").click(function(){
		$(".payNotice").fadeIn();
        $(".buyerNotice,.refoundNotice,.shipNotice").fadeOut(0);
	});
	$("#refoundNotice").click(function(){
		$(".refoundNotice").fadeIn();
        $(".payNotice,.buyerNotice,.shipNotice").fadeOut(0);
	});  
    $("#shipNotice").click(function(){
		$(".shipNotice").fadeIn();
        $(".payNotice,.buyerNotice,.refoundNotice").fadeOut(0);
	});    
})	