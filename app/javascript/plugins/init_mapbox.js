import mapboxgl from 'mapbox-gl';

// DON'T FORGET TO ADD THIS LINE IN THE <head> IN app/views/application.html.erb
// <%= stylesheet_pack_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>

import "mapbox-gl/dist/mapbox-gl.css";


const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 10, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    // on donne a mapbox la clé d'api récupérée dans le dataset
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    // initialize map
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
    });

    // on récupère les markers depuis le dataset
    const markers = JSON.parse(mapElement.dataset.markers);

    if (markers.length) {
      markers.forEach((marker) => {


        // we give the html to the marker constructor
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ]) // base
          .addTo(map); // base
      });

      fitMapToMarkers(map, markers); // constraint map around markers
    }

  }
};

export { initMapbox };
