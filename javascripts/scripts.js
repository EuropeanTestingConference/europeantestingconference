
$(document).ready(function() {
  // Because of the fixed navi, scroll back a 
  // bit if entering with an anchor link
  if(window.location.hash && $(window.location.hash).length > 0) {
    var offset = $(window.location.hash).offset().top-60;
    
//    if($.browser.safari) bodyelem = $("body")
//    else bodyelem = $("html,body");
bodyelem = $("html,body");
 
//    bodyelem.scrollTop(offset);
  }
});