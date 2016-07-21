
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
$(".moblieCover,.mobileUser,.moblieCover .proList,.moblieCover .mobileSearch").fadeOut(0)	
if($(window).width()<768){
	$(".grandsonNav").slideUp(0)
	for(i=0;i<$(".grandsonNav").length;i++){

		$(".subject:eq("+i+")").click({id:i},function(e){
		
		 var $t = $(".grandsonNav:eq("+e.data.id+")");	
			
		if ($t.is(':visible')){
			$t.slideUp();
			$(".subject a i:eq("+e.data.id+")").addClass('bt-caret-left').removeClass('bt-caret-down');
		}
		else{
			$t.slideDown();
			$(".subject a i:eq("+e.data.id+")").addClass('bt-caret-down').removeClass('bt-caret-left');
		}	
		


		})
	}
	
	$(".navSearch .bt-shopping-cart").click(function(){
		$(".moblieCover,.moblieCover .proList").fadeIn()
		$(".moblieCover .mobileUser,.moblieCover .mobileSearch").fadeOut(0)
	})
	$(".navSearch .bt-user").click(function(){
		$(".moblieCover,.moblieCover .mobileUser").fadeIn()
		$(".moblieCover .proList,.moblieCover .mobileSearch").fadeOut(0)
	})
	$(".navSearch .bt-search").click(function(){
		$(".moblieCover,.moblieCover .mobileSearch").fadeIn()
		$(".moblieCover .proList,.moblieCover .mobileUser").fadeOut(0)
	})
	
	
	$(".moblieCover .bt-times").click(function(){
		$(".moblieCover").fadeOut()

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
	// --------------------------------------------------------	
	
	
	//OnlineService
	$("#feedback-tab").click(function() {
		$("#feedback-form").toggle("slide");
	});

	$("#feedback-form form").on('submit', function(event) {
		var $form = $(this);
		$.ajax({
			type: $form.attr('method'),
			url: $form.attr('action'),
			data: $form.serialize(),
			success: function() {
				$("#feedback-form").toggle("slide").find("textarea").val('');
			}
		});
		event.preventDefault();
	});	
	// --------------------------------------------------------		

	
});
