import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="xp"
export default class extends Controller {
  connect() {
    let level = 1;
    let xp = 0;
    const session = 10;
    const sesh = document.querySelector(".sesh");
    const progress = document.getElementById("progress");

    function updateCounters(event) {
      let color = progress.style.backgroundColor;
      let fill = progress.style.width;
      xp = xp + session;
      console.log(xp);
      if (xp <= 110) {
        console.log("howdy");
        color = "blue";
        fill = xp;
        progress.style.backgroundColor = "blue";
        progress.style.width = `${fill}%`;
      } else {
        console.log("You Leveled up!!");
        progress.style.width = `0%`;
        progress.style.backgroundColor = "blue";
      }
    }

    // setInterval(updateCounters, 2000);
    // clicking the button acts as a session ending.
    sesh.addEventListener('click', updateCounters);
  }
}
// Transition on PAGE LOAD
// Connect the xp to the minutes that are actually studied
  // connect to user model?
// make the function listen to when the timer is done? or the value that is input into the intention thing?


// 1. study_sessions.pluck to get total minutes;
