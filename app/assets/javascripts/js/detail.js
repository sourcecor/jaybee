$(document).ready(function(){

	$("#infoPhoto").focus();
	$(".infoContent").load("ajax.html .infoPhoto");
	$("#infoPhoto").click(function(){
		$(".infoContent").load("ajax.html .infoPhoto");
	});
	$("#infoProduct").click(function(){
		$(".infoContent").load("ajax.html .infoProduct");
	});
	$("#infoSize").click(function(){
		$(".infoContent").load("ajax.html .infoSize");
	});
	$(".chart").click(function(){
		$("#infoSize").focus();
		$(".infoContent").load("ajax.html .infoSize");
		$("body").animate({scrollTop:"300px"});
	})
	
	
	for(i=0;i<$(".proColor").length;i++){
		$(".mainImg:not(.mainImg:eq(0))").fadeOut(0);
		
		
		$(".proColor:eq("+i+")").click({id:i},function(e){
				
			$(".proColor:eq("+e.data.id+")").addClass("active");
			$(".proColor:not(.proColor:eq("+e.data.id+"))").removeClass("active");
			$(".mainImg:eq("+e.data.id+")").fadeIn(0);
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