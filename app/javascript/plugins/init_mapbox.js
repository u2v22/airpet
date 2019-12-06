import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  console.log("asdkjfkajsdflls");
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const checkMarkers = (map, markers) => {
  map.on('zoomend', e => {
    let i = 0;
      markers.forEach((marker) => {
      const a = map.getBounds().contains([ marker.lng, marker.lat ])
      let b = document.querySelectorAll('.cards-animal-index').forEach((card) => {
      if (a) {
        console.log('super');
        card.children[i].style.display = 'block';
      } else {
        console.log(i);
        card.children[i].style.display = 'none';
      }
      i = i + 1 ;
      });
    })
  }
)};

//   document.querySelectorAll("img").forEach((img) => {
//   img.addEventListener("click", (event) => {
//     event.currentTarget.classList.toggle("img-circle");
//   });
// });

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    checkMarkers(map, markers);
  }
};

export { initMapbox };

