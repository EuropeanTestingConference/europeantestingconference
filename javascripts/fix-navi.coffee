---
---
prepareFixNavigation = ( navHeight ) ->
	nav = $('#navigation')
	->
		scrollTop = $(window).scrollTop()
		if(scrollTop > navHeight) 
			nav.addClass('fixed')
			nav.removeClass('hidden')
		else
			nav.removeClass('fixed')
			nav.addClass('hidden')
		false

(($) ->
	) jQuery

$ ->
	if(!window.Modernizr.touch)
		min = $('#navigation').offset().top
		fixNavigation = prepareFixNavigation( min )
		fixNavigation() 
		$(document).scroll( fixNavigation )
	else
		$('#navigation').addClass('hidden')
		
		