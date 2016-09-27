$(document).ready(function(){

	$("#content .childNav").slideUp(0)
	for(i=0;i<$(".rightSubject").length;i++){

		$("#content .rightSubject:eq("+i+")").click({id:i},function(e){
		
		 var $t = $("#content .childNav:eq("+e.data.id+")");	
			
		if ($t.is(':visible')){
			$t.slideUp();
			$("#content .rightSubject i:eq("+e.data.id+")").addClass('bt-caret-left').removeClass('bt-caret-down');
		}
		else{
			$t.slideDown();
			$("#content .rightSubject i:eq("+e.data.id+")").addClass('bt-caret-down').removeClass('bt-caret-left');
		}	
		


		})
	};


})	