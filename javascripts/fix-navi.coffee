---
---
prepareFixNavigation = ( navHeight ) ->
	nav = $('#navigation')
	->
		scrollTop = $(window).scrollTop()
		if(scrollTop > navHeight) 
			nav.removeClass('hidden')
		else
			nav.addClass('hidden')
		false

(($) ->
	) jQuery

$ ->
	if(!window.Modernizr.touch)
		# min = $('#navigation').offset().top
		min = 97 # min = $('#navigation').offset().top
		fixNavigation = prepareFixNavigation( min )
		fixNavigation() 
		$(document).scroll( fixNavigation )
	else
		$('#navigation').addClass('hidden')
		
	if(window.location.hash && $(window.location.hash).length > 0) 
		offset = $(window.location.hash).offset().top;
		scrollto = offset - 97
		$('html, body').animate({scrollTop:scrollto}, 0);

		false

		