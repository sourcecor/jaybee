$(document).ready(function(){

	$(".childNav").slideUp(0)
	for(i=0;i<$(".grandsonNav").length;i++){

		$(".rightSubject:eq("+i+")").click({id:i},function(e){
		
		 var $t = $(".childNav:eq("+e.data.id+")");	
			
		if ($t.is(':visible')){
			$t.slideUp();
			$(".rightSubject i:eq("+e.data.id+")").addClass('bt-caret-left').removeClass('bt-caret-down');
		}
		else{
			$t.slideDown();
			$(".rightSubject i:eq("+e.data.id+")").addClass('bt-caret-down').removeClass('bt-caret-left');
		}	
		


		})
	};
    
    
    $(".rightSubject:eq(0)").click()
    
})	