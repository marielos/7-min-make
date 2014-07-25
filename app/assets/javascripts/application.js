// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


function quickCount(mins) {

  // Keep some values in a closure
  var el = document.getElementById('counterDiv');
  var secs = 0;

  // Helper to pad single digit numbers
  function z(n){return (n<10? '0':'') + n}

  // Keep a reference to the interval
  var timer = setInterval(function() {

    // Write the values
    el.innerHTML = mins + ':' + z(secs);

    // Decremement seconds
    --secs;

    // If finished a minute, decrement minut
    if (secs < 0) {
      if (mins) {
        --mins;
        secs = 59;

      // If finsihed minutes too, cancel timer
      } else {
        timer && clearInterval(timer);
      }
    }

  // Run at about every second
  }, 1000);
}
