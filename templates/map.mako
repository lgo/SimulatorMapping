<!DOCTYPE html>
<html>
<head>
  <title>Simulation Mapping</title>
  <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />
  <script src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
  <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
  <script>
  $(function() {
    var map = L.map('map').setView([20, 20], 5);

    L.tileLayer('http://localhost:5000/tile/{z}/{x}/{y}', {
        maxZoom: 18
    }).addTo(map);

    var popup = L.popup();
    map.on('click', function(e) { 
      popup.setLatLng(e.latlng)
       .setContent("You clicked the map at " + e.latlng.toString())
       .openOn(map);
    });

  });
  </script>
</head>
<body>
<div style="height: 500px;" id="map">
</div>
</body>
</html>
