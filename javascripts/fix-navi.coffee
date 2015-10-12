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
		min = 72 # min = $('#navigation').offset().top
		fixNavigation = prepareFixNavigation( min )
		fixNavigation() 
		$(document).scroll( fixNavigation )
	else
		$('#navigation').addClass('hidden')
		
		