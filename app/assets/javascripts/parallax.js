$(document).ready(function() {
	
	/* Scroll event handler */
    $(window).bind('scroll',function(e){
    	parallaxScroll();
		
    });
    
	/* Next/prev and primary nav btn click handlers */
	$('a.home').click(function(){
    	$('html, body').animate({
    		scrollTop:$('#home').offset().top
    	}, 4000, function() {
	    	parallaxScroll(); // Callback is required for iOS
		});
    	return false;
	});
    $('a.services').click(function(){
    	$('html, body').animate({
    		scrollTop:$('#services').offset().top
    	}, 4000, function() {
	    	parallaxScroll(); // Callback is required for iOS
		});
    	return false;
    });
    $('a.portfolio').click(function(){
    	$('html, body').animate({
    		scrollTop:$('#portfolio').offset().top
    	}, 4000, function() {
	    	parallaxScroll(); // Callback is required for iOS
		});
    	return false;
    });
	$('a.about').click(function(){
    	$('html, body').animate({
    		scrollTop:$('#About').offset().top
    	}, 4000, function() {
	    	parallaxScroll(); // Callback is required for iOS
		});
    	return false;
    });
	$('a.contact').click(function(){
    	$('html, body').animate({
    		scrollTop:$('#Contact').offset().top
    	}, 4000, function() {
	    	parallaxScroll(); // Callback is required for iOS
		});
    	return false;
    });
    
    /* Show/hide dot lav labels on hover */
    //$('nav#primary a').hover(
    //	function () {
	//		$(this).prev('h1').show();
	//	},
	//	function () {
	//		$(this).prev('h1').hide();
	//	}
    //);
    
});

/* Scroll the background layers */
function parallaxScroll(){
	var scrolled = $(window).scrollTop();
	//$('.cloud').css('margin-top',(0-(scrolled*.25))+'px');
	//$('.stork').css('margin-top',(0-(scrolled*.5))+'px');
	//$('.worm').css('margin-top',(0-(scrolled*.75))+'px');
}

/* Set navigation dots to an active state as the user scrolls */
/*function redrawDotNav(){
	var section1Top =  0;
	// The top of each section is offset by half the distance to the previous section.
	var section2Top =  $('#frameless-parachute').offset().top - (($('#english-channel').offset().top - $('#frameless-parachute').offset().top) / 2);
	var section3Top =  $('#english-channel').offset().top - (($('#about').offset().top - $('#english-channel').offset().top) / 2);
	var section4Top =  $('#about').offset().top - (($(document).height() - $('#about').offset().top) / 2);;
	$('nav#primary a').removeClass('active');
	if($(document).scrollTop() >= section1Top && $(document).scrollTop() < section2Top){
		$('nav#primary a.home').addClass('active');
	} else if ($(document).scrollTop() >= section2Top && $(document).scrollTop() < section3Top){
		$('nav#primary a.frameless-parachute').addClass('active');
	} else if ($(document).scrollTop() >= section3Top && $(document).scrollTop() < section4Top){
		$('nav#primary a.english-channel').addClass('active');
	} else if ($(document).scrollTop() >= section4Top){
		$('nav#primary a.about').addClass('active');
	}
	
}*/
