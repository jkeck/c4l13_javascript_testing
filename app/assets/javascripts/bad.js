Blacklight.do_facet_expand_contract_behavior = function(){};
$(document).ready(function(){
	$(".facets-collapse .facet_limit").each(function(){
		if($(".selected", $(this)).length == 0){
			var list = $("ul", $(this));
			list.toggle();
			$("h5", $(this)).click(function(){
				$(this).toggleClass('twiddle-open');
				list.toggle();
			});			
		}else{
			$("h5", $(this)).toggleClass('twiddle-open');
		}
	});
});