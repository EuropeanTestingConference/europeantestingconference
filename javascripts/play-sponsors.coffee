---
---	
$playSponsors = null
$activeSponsor = null
$nextSponsor = null
$ ->
	
	rotateSponsors = () ->
		clearTimeout $playSponsors # //Make sure there's no bubbling timers
		$("#sponsor-groups li").removeClass("active") # //Remove all active class
		$activeSponsor.addClass("active").removeClass('next');  #//Add active class (the $active is declared in the rotateSwitch function)
		$nextSponsor = $activeSponsor.next()
		if ( $nextSponsor.length == 0) # If paging reaches the end...
			$nextSponsor = $("#sponsor-groups li:first"); # //go back to first
		
		$nextSponsor.addClass('next');
		rotateSponsorsSwitch();

	initializeSponsor = () ->
		$activeSponsor = $("#sponsor-groups li.active").next();
		if ( $activeSponsor.length == 0) # //If paging reaches the end...
			$activeSponsor = $("#sponsor-groups li:first") #; //go back to first	

	rotateSponsorsSwitch = () ->
		clearTimeout($playSponsors);
		initializeSponsor()
		$playSponsors = setTimeout( rotateSponsors, 4000 ) # ; //Timer speed in milliseconds (4 seconds)
		
	rotateSponsorsSwitch()