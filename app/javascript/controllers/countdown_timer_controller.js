import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="countdown-timer"
export default class extends Controller {
  connect() {
    console.log("howdy");
  let target_date = Math.floor(new Date().getTime() / 1000) + (60 * `${5}`); // Need to be able to interpolate in study_duration / pass as argument
  let hours, minutes, seconds; // variables for time units

  let countdown = document.getElementById("tiles"); // get tag element

  getCountdown();

  setInterval(function () { getCountdown(); }, 1000);

  function getCountdown(){

	// find the amount of "seconds" between now and target
	let current_date = (new Date().getTime() / 1000);
	let seconds_left = (target_date - current_date);

	hours = pad( parseInt(seconds_left / 3600) );
	seconds_left = seconds_left % 3600;

	minutes = pad( parseInt(seconds_left / 60) );
	seconds = pad( parseInt( seconds_left % 60 ) );

	// format countdown string + set tag value
	countdown.innerHTML = "<span>" + hours + "</span><span>" + minutes + "</span><span>" + seconds + "</span>";
}
if (time == 0) {
  countdown.innerHTML = "<span>" + '00' + "</span><span>" + '00' + "</span><span>" + 'seconds' + "</span>";
}

function pad(n) {
	return (n < 10 ? '0' : '') + n;
}


  }
}
