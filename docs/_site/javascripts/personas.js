(function() {
  var clearSelection, findAllSelectedPersonas, findSchedulesForPersona, selectAllValidFor, selectPersona, selectTopicsForAllPersonas, showAsValid, showAsValidElement;

  $(document).on('click', '.persona', (function() {
    var selectedPersonas;
    $(this).toggleClass('selected');
    clearSelection();
    selectedPersonas = findAllSelectedPersonas($("#personas"));
    return selectAllValidFor(selectedPersonas);
  }));

  clearSelection = function() {
    return $("#schedule").find("td.valid").each(function(index, element) {
      return $(element).removeClass("valid");
    });
  };

  findAllSelectedPersonas = function(divElement) {
    return divElement.find(".selected");
  };

  selectAllValidFor = function(selectedPersonas) {
    selectedPersonas.each(function(index, element) {
      return selectPersona(element.id);
    });
    if (selectedPersonas.length > 0) {
      return selectTopicsForAllPersonas();
    }
  };

  findSchedulesForPersona = function(persona) {
    return $("#schedule").find("td." + persona);
  };

  selectPersona = function(persona) {
    var scheludedFor;
    scheludedFor = findSchedulesForPersona(persona);
    return showAsValid(scheludedFor);
  };

  selectTopicsForAllPersonas = function() {
    return $("#schedule").find(".all-personas").each(function(index, element) {
      return showAsValidElement(element);
    });
  };

  showAsValid = function(elements) {
    return elements.each(function(index, element) {
      return showAsValidElement(element);
    });
  };

  showAsValidElement = function(element) {
    return $(element).addClass("valid");
  };

}).call(this);
