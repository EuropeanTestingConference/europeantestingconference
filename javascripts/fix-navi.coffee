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
			nav.addClass('hidden')
			nav.removeClass('fixed')
		false

(($) ->
	) jQuery

$ ->
	if(!window.Modernizr.touch)
		# min = $('#navigation').offset().top
		min = 90 # min = $('#navigation').offset().top
		fixNavigation = prepareFixNavigation( min )
		fixNavigation() 
		$(document).scroll( fixNavigation )
	else
		$('#navigation').addClass('hidden')
		
		