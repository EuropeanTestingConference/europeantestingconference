---
---

$(document).on('click', '.persona', ( ->
	$(this).toggleClass('selected')
	clearSelection()
	selectedPersonas = findAllSelectedPersonas($("#personas"))
	selectAllValidFor( selectedPersonas )
));

clearSelection = () ->
	$("#schedule").find("td.valid").each( (index, element) -> $(element).removeClass("valid") ) 	

findAllSelectedPersonas = ( divElement ) ->
	divElement.find(".selected")

selectAllValidFor = ( selectedPersonas ) ->
	selectedPersonas.each( (index , element ) -> selectPersona( element.id ))
	if ( selectedPersonas.length > 0 )
		selectTopicsForAllPersonas()

findSchedulesForPersona = ( persona ) ->
	$("#schedule").find("td.#{persona}")
	
selectPersona = ( persona ) ->
	scheludedFor = findSchedulesForPersona( persona )
	showAsValid( scheludedFor )

selectTopicsForAllPersonas = () ->
	$("#schedule").find(".all-personas").each( (index, element ) -> showAsValidElement( element ))

showAsValid = ( elements ) ->
	elements.each( ( index, element ) -> showAsValidElement( element ) )
	
showAsValidElement = (element) ->
	$(element).addClass("valid")