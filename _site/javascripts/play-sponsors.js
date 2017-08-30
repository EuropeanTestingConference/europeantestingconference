(function() {
  var $activeSponsor, $nextSponsor, $playSponsors;

  $playSponsors = null;

  $activeSponsor = null;

  $nextSponsor = null;

  $(function() {
    var initializeSponsor, rotateSponsors, rotateSponsorsSwitch;
    rotateSponsors = function() {
      clearTimeout($playSponsors);
      $("#sponsor-groups li").removeClass("active");
      $activeSponsor.addClass("active").removeClass('next');
      $nextSponsor = $activeSponsor.next();
      if ($nextSponsor.length === 0) {
        $nextSponsor = $("#sponsor-groups li:first");
      }
      $nextSponsor.addClass('next');
      return rotateSponsorsSwitch();
    };
    initializeSponsor = function() {
      $activeSponsor = $("#sponsor-groups li.active").next();
      if ($activeSponsor.length === 0) {
        return $activeSponsor = $("#sponsor-groups li:first");
      }
    };
    rotateSponsorsSwitch = function() {
      clearTimeout($playSponsors);
      initializeSponsor();
      return $playSponsors = setTimeout(rotateSponsors, 4000);
    };
    return rotateSponsorsSwitch();
  });

}).call(this);
