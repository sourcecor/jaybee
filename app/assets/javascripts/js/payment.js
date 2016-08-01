$("document").ready(function(){
	$('.grayBg input').click(function() {
		
	   if($('#cvs').is(':checked')) { 
		   $(".cvs img").attr("src","../assets/images/cart/icon_cvs_color.gif");
	   }else{
		  $(".cvs img").attr("src","../assets/images/cart/icon_cvs.gif"); 
		   
	   }
		
	});
	
})