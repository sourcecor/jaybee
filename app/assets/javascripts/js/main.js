
$(document).ready(function() {

    
    var layout   = document.getElementById('layout'),
        menu     = document.getElementById('menu'),
        menuLink = document.getElementById('menuLink');

    function toggleClass(element, className) {
        var classes = element.className.split(/\s+/),
            length = classes.length,
            i = 0;

        for(; i < length; i++) {
          if (classes[i] === className) {
            classes.splice(i, 1);
            break;
          }
        }
        // The className is not found
        if (length === classes.length) {
            classes.push(className);
        }

        element.className = classes.join(' ');
    }

    if(menuLink != undefined){
        menuLink.onclick = function (e) {
            var active = 'active';

            e.preventDefault();
            toggleClass(layout, active);
            toggleClass(menu, active);
            toggleClass(menuLink, active);
        };
    }
    
    $(".sub,.subChild").slideUp(0)
	$("#menu").mouseleave(function(){
			$(".sub,.subChild").stop()
			$(".sub,.subChild").slideUp()
			
		})
	
	for(i=0;i<$(".main").length;i++){
		
		$(".main:eq("+i+")").click({id:i},function(e){
			$(".sub").stop()
		$(".sub:not(.sub:eq("+e.data.id+"))").slideUp(300)
		$(".sub:eq("+e.data.id+")").slideToggle(300)
		
			
	})
		
		
	}
    
    for(i=0;i<$(".mainChild").length;i++){
		
		$(".mainChild:eq("+i+")").click({id:i},function(e){
			$(".subChild").stop()
		$(".subChild:not(.subChild:eq("+e.data.id+"))").slideUp(300)
		$(".subChild:eq("+e.data.id+")").slideToggle(300)
		
			
	})
		
		
	}
// Menu
	
$(".childrenNav").fadeOut(0)
$("header").mouseleave(function(){
	$(".childrenNav").stop()	
	$(".childrenNav").fadeOut()

})
$("#member").mouseenter(function(){
	$(".childrenNav:eq(0)").stop()
	$(".childrenNav:eq(0)").fadeIn()
	$(".childrenNav:not(.childrenNav:eq(0))").fadeOut(0);
})

$("#proList").mouseenter(function(){
	$(".childrenNav:eq(1)").stop()
	$(".childrenNav:eq(1)").fadeIn()
	$(".childrenNav:not(.childrenNav:eq(1))").fadeOut(0);
})
		

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
	$(".mobileUser .login").click(function(){
		$(".moblieCover").fadeOut()

	})
	
	
	$("footer article span").slideUp(0)
	$("footer").mouseleave(function(){
			$("footer article span").stop()
			$("footer article span").slideUp()
			
		})
	
	for(i=0;i<$("footer article .subject").length;i++){
		
		$("footer article .subject:eq("+i+")").click({id:i},function(e){
		$("footer article span").stop()
		$("footer article span:not(footer article span:eq("+e.data.id+"))").slideUp(300)
		$("footer article span:eq("+e.data.id+")").slideToggle(300)
		
			
	})
		
		
	}
	
	
	
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

	
	
	//footerSlideUp
	 fh=$("footer").height()-$("#footerBar").height()-10
	$("footer").animate({bottom:""+-fh+"px"},0);
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
			if($(window).width()<768){
				$("footer article span").slideUp(0)
			}
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
	
	
	//Login
	$(".login").fancybox({
		width : '100%',
		maxWidth:'590px',
		height:'100%',
		padding:'0px',
		type: 'iframe',
		openEffect : 'elastic',
		openSpeed  : 150,
		closeEffect : 'elastic',
		closeSpeed  : 150,
	});
	
	
	
});
