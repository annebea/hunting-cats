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

        // on récupère la popup "infoWindow" au format string
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

        // Create a HTML element for your custom marker
        const element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = `url('${marker.image_url}')`;
        element.style.backgroundSize = 'contain';
        element.style.width = '50px';
        element.style.height = '50px';

        // we give the html to the marker constructor
        new mapboxgl.Marker(element)
          .setLngLat([ marker.lng, marker.lat ]) // base
          .setPopup(popup) // for popup
          .addTo(map); // base
      });

      fitMapToMarkers(map, markers); // constraint map around markers
    }

  }
};

export { initMapbox };
