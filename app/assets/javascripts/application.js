// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require vue
//= require vue-router
//= require vue-resource
//= require pnotify
//= require unobtrusive_flash
//= require sync
//= require fancybox
//= require_directory ./js
//= require_directory .

function initMap() {
  if ($('#geocode').length > 0)
    autocomplete = new google.maps.places.Autocomplete($('#geocode')[0]);
}

$(function(){
  $("a.fancybox").fancybox({ parent: "body"});
  if (typeof google === 'object' && typeof google.maps === 'object') {
    // initMap();
  } else {
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyCUSk-5eNj1T5RH1U6tWPuqzA5fVMv37f0&libraries=places&callback=initMap';
    document.body.appendChild(script);
  }
});
