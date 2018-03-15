function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var vineAddress = document.getElementById('vine_location');

    if (vineAddress) {
      var autocomplete = new google.maps.places.Autocomplete(vineAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(vineAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
