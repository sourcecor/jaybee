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
//= require vue
//= require vue-router
//= require vue-resource
//= require pnotify
//= require unobtrusive_flash
//= require sync
//= require fancybox
//= require_directory ./js
//= require_directory .
//讓輸入的字串可以包含{}
function getStringFormatPlaceHolderRegEx(placeHolderIndex)
{
  return new RegExp('({)?\\{' + placeHolderIndex + '\\}(?!})', 'gm')
}
//當format格式有多餘的position時，就不會將多餘的position輸出
//ex:
// var fullName = 'Hello. My name is {0} {1} {2}.'.format('firstName', 'lastName');
// 輸出的 fullName 為 'firstName lastName', 而不會是 'firstName lastName {2}'
function cleanStringFormatResult(txt)
{
  if (txt == null) return "";
  return txt.replace(getStringFormatPlaceHolderRegEx("\\d+"), "");
}

String.format = function ()
{
  var s = arguments[0];
  if (s == null) return "";
  for (var i = 0; i < arguments.length - 1; i++)
  {
    var reg = getStringFormatPlaceHolderRegEx(i);
    s = s.replace(reg, (arguments[i + 1] == null ? "" : arguments[i + 1]));
  }
  return cleanStringFormatResult(s);
}

function initMap() {
  if ($('#geocode').length > 0)
    autocomplete = new google.maps.places.Autocomplete($('#geocode')[0]);
}

$(function(){
  $(".fancybox").fancybox({
    'helpers':{
      'overlay':{
        closeClick:true
      }
    },
    'height': '100%',
    'width': '95%',
    'maxWidth': '900px',
    'fitToView':false,
    'autoSize':false,
    'closeBtn':true,
    'modal':false,
    'type': 'iframe'
  });
  if (typeof google === 'object' && typeof google.maps === 'object') {
    // initMap();
  } else {
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyCUSk-5eNj1T5RH1U6tWPuqzA5fVMv37f0&libraries=places&callback=initMap';
    document.body.appendChild(script);
  }
});
