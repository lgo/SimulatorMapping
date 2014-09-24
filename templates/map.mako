<!DOCTYPE html>
<html>
<head>
  <title>Simulation Mapping</title>
  <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />
  <script src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
  <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
  <script>
  $(function() {
    var map = L.map('map').setView([51.505, -0.09], 13);

    L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 18
    }).addTo(map);
  });
  </script>
</head>
<body>
<div style="height: 500px;" id="map">
</div>
</body>
</html>