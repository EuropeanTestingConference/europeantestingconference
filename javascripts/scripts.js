$(document).ready(function() {
  // Fixed top navigation for desktop browsers
  if(!window.Modernizr.touch) {
    var min = $('#navigation').offset().top;
    $(window).scroll(function() { 
   	  var scrollTop = $(window).scrollTop();
    	if(scrollTop > min) {
    	 $('#navigation').addClass('fixed');
    	}
      else {
    	 $('#navigation').removeClass('fixed');
      }
    });
  }
  
  // Because of the fixed navi, scroll back a 
  // bit if entering with an anchor link
  if(window.location.hash && $(window.location.hash).length > 0) {
    var offset = $(window.location.hash).offset().top-60;
    
    if($.browser.safari) bodyelem = $("body")
    else bodyelem = $("html,body");

    bodyelem.scrollTop(offset);
  }
  
  
  // Cycling cites
  var $activeCite, $nextCite;
  var rotateCites = function(){
    clearTimeout(playCites); //Make sure there's no bubbling timers
    
    $("#cites li").removeClass("active"); //Remove all active class
    $activeCite.addClass("active").removeClass('next'); //Add active class (the $active is declared in the rotateSwitch function)
    // Set next ready
    $nextCite = $activeCite.next();
    if ( $nextCite.length === 0) { //If paging reaches the end...
      $nextCite = $("#cites li:first"); //go back to first
    }
    $nextCite.addClass('next');

    rotateCitesSwitch();
  };

  var playCites;
  var rotateCitesSwitch = function(){
    clearTimeout(playCites);
    playCites = setTimeout(function(){ //Set the waiting time for next animation
      $activeCite = $("#cites li.active").next();
      if ( $activeCite.length === 0) { //If paging reaches the end...
        $activeCite = $("#cites li:first"); //go back to first
      }
      rotateCites(); //Trigger the paging and slider function
    }, 4500); //Timer speed in milliseconds (4.5 seconds)
  };
  // Init
  rotateCitesSwitch();
  
  // Cycling sponsors
  var $activeSponsor, $nextSponsor;
  var rotateSponsors = function(){
    clearTimeout(playSponsors); //Make sure there's no bubbling timers
    
    $("#sponsor-groups li").removeClass("active"); //Remove all active class
    $activeSponsor.addClass("active").removeClass('next'); //Add active class (the $active is declared in the rotateSwitch function)
    // Set next ready
    $nextSponsor = $activeSponsor.next();
    if ( $nextSponsor.length === 0) { //If paging reaches the end...
      $nextSponsor = $("#sponsor-groups li:first"); //go back to first
    }
    $nextSponsor.addClass('next');

    rotateSponsorsSwitch();
  };

  var playSponsors;
  var rotateSponsorsSwitch = function(){
    clearTimeout(playSponsors);
    playSponsors = setTimeout(function(){ //Set the waiting time for next animation
      $activeSponsor = $("#sponsor-groups li.active").next();
      if ( $activeSponsor.length === 0) { //If paging reaches the end...
        $activeSponsor = $("#sponsor-groups li:first"); //go back to first
      }
      rotateSponsors(); //Trigger the paging and slider function
    }, 4000); //Timer speed in milliseconds (4 seconds)
  };
  // Init
  rotateSponsorsSwitch();
  
  
  // Get tweets if front
  if($('#tweets').length > 0) {
    getTwitters('tweets', { 
  	  id: 'turkuagileday', 
  	  count: 5, 
  	  enableLinks: true, 
  	  ignoreReplies: true, 
  	  clearContents: true,
  	  template: '%text% <a class="posted-on" href="http://twitter.com/%user_screen_name%/statuses/%id_str%/">%time%</a>'
  	});
  }
  
  /*if(Modernizr.mq('only screen and (max-width: 480px)')) {
    // Rotate some table cells if mobile
    $( '.topic' ).each( function() {
      $(this).html( '<div>' + $(this).html() + '<\/div>' );
    });
    
    $( '.topic > div' ).css({
      'position':          'relative',
      'margin':            '0',
      'padding':           '0',
      'white-space':       'nowrap',
      '-webkit-transform': 'rotate(90deg)', // chrome+safari
      '-ms-transform':     'rotate(90deg)', // IE
      '-moz-transform':    'rotate(90deg)', // firefox
      '-o-transform':      'rotate(90deg)', // opera
      'transform':         'rotate(90deg)'  // CSS 3
    });
    
    $('.topic > div').each( function() {
      var t = $(this);
      var w = t.width();
      t.css( 'min-width', w );
      
      t.parent().height( w );
      t.parent().css({
        'max-width': t.height(),
      });
      
      t.css( 'left', -1 * w/2 + t.parent().width()/2 );
      t.css( 'top', w/2 - t.height()/2);
    });
  }*/
});