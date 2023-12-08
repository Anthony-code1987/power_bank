import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    reservations: Array,
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map2 = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    this.reservationsValue.forEach((reservation) => {
      const popup = new mapboxgl.Popup().setHTML(reservation.info_window2_html)

      const customMarker = document.createElement("div")
      customMarker.innerHTML = reservation.marker2_html

      new mapboxgl.Marker(customMarker)
        .setLngLat([ reservation.lng, reservation.lat ])
        .setPopup(popup)
        .addTo(this.map2)
  })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.reservationsValue.forEach(reservation => bounds.extend([ reservation.lng, reservation.lat ]))
    this.map2.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
