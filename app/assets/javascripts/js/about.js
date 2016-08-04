$(document).ready(function(){

	$(".tabContent").slideUp(0)
	for(i=0;i<$(".straightTab").length;i++){
		$(".straightTab:eq("+i+")").click({id:i},function(e){
			$(".tabContent:eq("+e.data.id+")").slideToggle(300)
			$(".tabContent:not(.tabContent:eq("+e.data.id+"))").slideUp(300)
			$(".straightTab:eq("+e.data.id+")").addClass("active")
			$(".straightTab:not(.straightTab:eq("+e.data.id+"))").removeClass("active")
		})
		
		
	}
})	