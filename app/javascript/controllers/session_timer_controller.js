import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="session-timer"
export default class extends Controller {
  connect() {
    let hours, minutes, seconds; // variables for time units

    let countdown = document.getElementById("tiles"); // get tag element
    const submit = document.getElementById("submit");
    const modalClose = document.querySelector(".btn-close");
    const passTime = document.getElementById("pass_time");
    console.log("submit");
    const end = "<span>" + '00' + "</span><span>" + '00' + "</span><span>" + '00' + "</span>";

    submit.addEventListener('submit', (event) => {
        event.preventDefault()
        updateSessions(submit)
        modalClose.click()
        let target_date = Math.floor(new Date().getTime() / 1000) + (60 * Number(passTime.innerHTML)); // This last value is minutes
        setInterval(() => {
          getCountdown(target_date)
        }, 200);
    });


    function getCountdown(target_date){

      // find the amount of "seconds" between now and target
      let current_date = (new Date().getTime() / 1000);
      let seconds_left = (target_date - current_date);

      hours = pad( parseInt(seconds_left / 3600) );
      seconds_left = seconds_left % 3600;

      minutes = pad( parseInt(seconds_left / 60) );
      seconds = pad( parseInt(seconds_left % 60 ) );

      // format countdown string + set tag value
      countdown.innerHTML = "<span>" + hours + "</span><span>" + minutes + "</span><span>" + seconds + "</span>";

      if (seconds_left < 0) {
        countdown.innerHTML = "<span>" + '00' + "</span><span>" + '00' + "</span><span>" + '00' + "</span>";
        window.location.href = ('/profile');
      }
    }

    function updateSessions(form) {
      console.log(form)
      fetch(form.action, {method: "PATCH", body: new FormData(form)})
    }

    function pad(n) {
      return (n < 10 ? '0' : '') + n;
    }


  }
}
