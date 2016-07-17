
$(document).ready(function() {

// Menu
	
$(".childrenNav").fadeOut(0)
	$("header").mouseleave(function(){
		$(".childrenNav").stop()	
		$(".childrenNav").fadeOut()
		
		})
	
	for(i=0;i<$(".parentNav").length;i++){
		
		$(".parentNav:eq("+i+")").mouseenter({id:i},function(e){
			$(".childrenNav").stop()
			$(".childrenNav:eq("+e.data.id+")").fadeIn()
		$(".childrenNav:not(.childrenNav:eq("+e.data.id+"))").fadeOut()
		
		
			
	})
		
		
	}
  // ----------------------------------------------------
	

	
	
 // back to top
	
		$("#back").fadeOut(0);
		
		$(window).scroll(function(){
			if($(window).scrollTop()==0){	

				$("#back").stop()
				$("#back").fadeOut()
				$("header").removeClass(".boxShadow")	
				
				
			}else{
				$("header").addClass(".boxShadow")
				$("#back").fadeIn()

			}
		})
		$("#back").hover(function(){
			
			$("#back").css("opacity","0.8")
		},function(){
			
			$("#back").css("opacity","1.0")
		})	
		
		$("#back").click(function(){
			$("html,body").animate({scrollTop:"0px"})	
		}) 
	// --------------------------------------------------------
		
		
	//reload on every screen size change	
	var windowWidth = $(window).width();

	$(window).resize(function() {
		if(windowWidth != $(window).width()){
			window.location.reload();
			return;
		}
	});
	
	// --------------------------------------------------------

	
	
	//reload on every screen size change	
	var windowWidth = $(window).width();

	$(window).resize(function() {
		if(windowWidth != $(window).width()){
			window.location.reload();
			return;
		}
	});
	
	// --------------------------------------------------------	
	
	
	//footerSlideUp
	 fh=$("footer").height()-$("#footerBar").height()-10
	$("footer").animate({bottom:""+-fh+"px"});
 	$("#footerBar").click(function(){
		if($("#footerBar i").hasClass('bt-caret-up'))//mouseWheel icon change
        {
            $("#footerBar i").addClass('bt-caret-down').removeClass('bt-caret-up');
			$("footer").animate({bottom:"0px"});

        }
        else
        {
            $("#footerBar i").addClass('bt-caret-up').removeClass('bt-caret-down');
            $("footer").animate({bottom:""+-fh+"px"});
        }; 
	})	
	
});
