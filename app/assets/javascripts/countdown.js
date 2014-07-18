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


