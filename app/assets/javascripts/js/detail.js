$(document).ready(function(){
	$(".infoPhoto").fadeIn();
    $("#infoPhoto").focus();
    $(".infoProduct,.infoSize").fadeOut(0);
	$("#infoPhoto").click(function(){
		$(".infoPhoto").fadeIn();
        $(".infoContent div:not(.infoPhoto)").fadeOut(0);
	});
	$("#infoProduct").click(function(){
		$(".infoProduct").fadeIn();
        $(".infoContent div:not(.infoProduct)").fadeOut(0);
	});
	$("#infoSize").click(function(){
		$(".infoSize").fadeIn();
        $(".infoContent div:not(.infoSize)").fadeOut(0);
	});
	$(".chart").click(function(){
		$("#infoSize").focus();
		$(".infoSize").fadeIn();
        $(".infoContent div:not(.infoSize)").fadeOut(0);
		$("body").animate({scrollTop:"400px"});
	})
	
	
	for(i=0;i<$(".proColor").length;i++){
		$(".mainImg:not(.mainImg:eq(0))").fadeOut(0);
		
		
		$(".proColor:eq("+i+")").click({id:i},function(e){
				
			$(".proColor:eq("+e.data.id+")").addClass("active");
			$(".proColor:not(.proColor:eq("+e.data.id+"))").removeClass("active");
			$(".mainImg:eq("+e.data.id+")").fadeIn();
			$(".mainImg:not(.mainImg:eq("+e.data.id+"))").fadeOut(0);
		})
	
	}
	for(i=0;i<$(".proChart").length;i++){
		$(".proChart:eq("+i+")").click({id:i},function(e){

				$(".proChart:eq("+e.data.id+")").addClass("active");
				$(".proChart:not(.proChart:eq("+e.data.id+"))").removeClass("active");

		})	
		
	}
	
})