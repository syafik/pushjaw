$(document).ready(function() {

	$(".tab-content").hide(); 
	$("ul.tabs li:first").addClass("current").show(); 
	$(".tab-content:first").show(); 

	//On Click 
	$("ul.tabs li").click(function() {

		$("ul.tabs li").removeClass("current"); 
		$(this).addClass("current"); 
		$(".tab-content").hide(); 

		var activeTab = $(this).find("a").attr("href"); 
		$(activeTab).fadeIn(); 
		return false;
	});

});