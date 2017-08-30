$ ->
	$('.show-more-button').each (index, element) =>
    $(element).on 'click tap', (event) =>
      element = $(event.target)
      excerpt_div = element.parent('div').each () ->
        $(@).toggleClass 'hidden'
      show_more_div_id = "#" + excerpt_div.attr('id').replace("excerpt", "full")
      $( show_more_div_id).toggleClass 'hidden'

	$('.show-less-button').each (index, element) =>
    $(element).on 'click tap', (event) =>
      element = $(event.target)
      excerpt_div = element.parent('div').each () ->
        $(@).toggleClass 'hidden'
      show_more_div_id = "#" + excerpt_div.attr('id').replace("full", "excerpt")
      $( show_more_div_id).toggleClass 'hidden'

