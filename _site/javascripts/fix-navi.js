(function() {
  var fixAnchorLinksOnFixedNavi, prepareFixNavigation;

  prepareFixNavigation = function(navHeight) {
    var nav;
    nav = $('#navigation');
    return function() {
      var scrollTop;
      scrollTop = $(window).scrollTop();
      if (scrollTop > navHeight) {
        nav.removeClass('hidden');
      } else {
        nav.addClass('hidden');
      }
      return false;
    };
  };

  fixAnchorLinksOnFixedNavi = function(anchor) {
    if (($(anchor).offset().top + $(anchor).height()) < $(document).height() - 150) {
      return window.scrollTo(window.scrollX, window.scrollY - 50);
    }
  };

  (function($) {})(jQuery);

  $(function() {
    var anchor, fixNavigation, min, scrollto, target;
    if (!window.Modernizr.touch) {
      min = 97;
      fixNavigation = prepareFixNavigation(min);
      fixNavigation();
      $(document).scroll(fixNavigation);
      $(window).on("hashchange", function() {
        return fixAnchorLinksOnFixedNavi(location.hash);
      });
    } else {
      $('#navigation').addClass('hidden');
    }
    if (window.location.hash && $(window.location.hash).length > 0) {
      anchor = $(window.location.hash).offset().top;
      scrollto = anchor - 97;
      target = window.location.hash;
      window.scrollTo(window.scrollX, window.scrollY - scrollto);
      location.hash = "	";
      location.hash = target;
      return false;
    }
  });

}).call(this);
