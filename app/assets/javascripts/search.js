$( document ).ready(function() {

   var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 14,
            center: new google.maps.LatLng(locations[0].latitude, locations[0].longitude),
            mapTypeId: google.maps.MapTypeId.ROADMAP
          });

    for (i = 0; i < locations.length; i++) {
        var infowindow = new google.maps.InfoWindow();

        var marker, i;
        marker = new google.maps.Marker({
          position: new google.maps.LatLng(locations[i].latitude, locations[i].longitude),
          map: map
        });

          // console.log('marker.position: ', marker.position);

          // google.maps.event.addListener(marker, 'click', (function(marker, i) {
          //   return function() {
          //     infowindow.setContent(locations[i].address);
          //     infowindow.open(map, marker);
          //   }
          // })(marker, i));

          // console.log('locations: ', locations[i]);
    }
})