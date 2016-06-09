// remap jQuery to $
(function($){})(window.jQuery);


/* trigger when page is ready */
//$(document).on('page:change', function() {
$(document).ready(function (){

	$('.flip').click(function(event) {
		event.preventDefault();
		$('#card').toggleClass('flipped');
	});

});