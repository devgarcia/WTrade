// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("channels")
require("jquery")
//require ("autonumeric")


//import 'autonumeric'
import 'bootstrap'
import '../stylesheets/application'

// document.addEventListener("turbolinks:load", () => { 
//   $('[data-toggle="tooltip"]').tooltip();
//   $('[data-toggle="popover"]').popover();
// });


if (navigator.serviceWorker) {
  navigator.serviceWorker.register('/service-worker.js', { scope: './' })
    .then(function(reg) {
      console.log('[Companion]', 'Service worker registered!');
      console.log(reg);
    });
}


//import 'jquery'
//import 'autonumeric'
// require 'jquery'
// require'autonumeric'

// $(document).ready(function(){
	// $('#valor_maximo_cop').mask('000.000.000.000.000,00', {reverse: true});
// });


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

