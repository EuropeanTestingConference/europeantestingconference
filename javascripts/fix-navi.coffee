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

	$(window).on "hashchange", ->
		window.scrollTo(window.scrollX, window.scrollY - 50 );
		
	if(window.location.hash && $(window.location.hash).length > 0) 
		anchor = $(window.location.hash).offset().top;
		scrollto = anchor - 97
		target = window.location.hash
		window.scrollTo(window.scrollX, window.scrollY - scrollto);
		location.hash = "	"
		location.hash = target

		false
