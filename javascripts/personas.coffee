---
---

$(document).on('click', '.persona', ( ->
	$(this).toggleClass('selected')
	selectedPersonas = findAllSelectedPersonas($("#personas"))
	selectAllValidFor( selectedPersonas )
));

findAllSelectedPersonas = ( divElement ) ->
	$("#schedule").find("td.valid").each( (index, element) -> $(element).removeClass("valid") ) 
	divElement.find(".selected")

selectAllValidFor = ( selectedPersonas ) ->
	selectedPersonas.each( (index , element ) -> selectPersona( element.id ))

findSchedulesForPersona = ( persona ) ->
	$("#schedule").find("td.#{persona}")
	
selectPersona = ( persona ) ->
	scheludedFor = findSchedulesForPersona( persona )
	showAsValid( scheludedFor )

showAsValid = ( elements ) ->
	elements.each( ( index, element ) -> showAsValidElement( element ) )
	
showAsValidElement = (element) ->
	$(element).addClass("valid")