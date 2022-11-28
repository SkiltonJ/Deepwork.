import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="countdown-timer"
export default class extends Controller {
  connect() {
    console.log("howdy");
    let target_date = Math.floor(new Date().getTime() / 1000) + (60 * `${0.1}`); // Need to be able to interpolate in study_duration / pass as argument
    let hours, minutes, seconds; // variables for time units

    let countdown = document.getElementById("tiles"); // get tag element

    getCountdown();

    const myInterval = setInterval(getCountdown, 500);
    // setInterval(function () { getCountdown(); }, 1000);
    clearInterval(myInterval);
    myInterval = setInterval(getCountdown, 500);

    function getCountdown(){
      const url = window.location.pathname;
      console.log(url)
      // find the amount of "seconds" between now and target
      let current_date = (new Date().getTime() / 1000);
      let seconds_left = (target_date - current_date);

      hours = pad( parseInt(seconds_left / 3600) );
      seconds_left = seconds_left % 3600;

      minutes = pad( parseInt(seconds_left / 60) );
      seconds = pad( parseInt( seconds_left % 60 ) );

      // format countdown string + set tag value
      const ifConditionalHTML = "<span>" + '00' + "</span><span>" + '00' + "</span><span>" + '00' + "</span>";
      countdown.innerHTML = "<span>" + hours + "</span><span>" + minutes + "</span><span>" + seconds + "</span>";
      if (countdown.innerHTML === ifConditionalHTML & url === '/quickstart') {
        countdown.innerHTML = "<span>" + '00' + "</span><span>" + '00' + "</span><span>" + '00' + "</span>";
        window.location.href = ('/tease');
      }
      if (seconds_left < 0) {
        countdown.innerHTML = "<span>" + '00' + "</span><span>" + '00' + "</span><span>" + '00' + "</span>";
      }
      if (url === '/tease') {
        countdown.innerHTML = "<span>" + '00' + "</span><span>" + '00' + "</span><span>" + '00' + "</span>";
      }
    }


    function pad(n) {
      return (n < 10 ? '0' : '') + n;
    }


  }
}
