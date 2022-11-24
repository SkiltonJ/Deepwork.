import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="my-timer"
export default class extends Controller {
  connect() {
    function countDownTimer() {
      // future = new Date().getTime() / 1000 + (60 * 4); //Where 4 is the minutes
      // const difference = Math.floor(future - new Date().getTime() / 1000);
      const difference = +new Date("2023-01-01 02:55:00 GMT+1030") - +new Date();
      let remaining = "Time's up!"; // might be able to call an event listner later

      if (difference > 0) {
        const parts = {
          days: Math.floor(difference / (1000 * 60 * 60 * 24)),
          hours: Math.floor((difference / (1000 * 60 * 60)) % 24),
          minutes: Math.floor((difference / 1000 / 60) % 60),
          seconds: Math.floor((difference / 1000) % 60),
        };
        remaining = Object.keys(parts).map(part => {
          if (!parts[part]) return;
          return `${parts[part]} ${part}`;
        }).join(" ")
      }
      document.getElementById("my-timer").innerHTML = remaining;
    }
    countDownTimer();
  }
}
