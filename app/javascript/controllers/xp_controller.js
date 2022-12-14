import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="xp"
export default class extends Controller {
  connect() {
    const maxExp = {
      '1': 100,
      '2': 300,
      '3': 600,
      '4': 1000,
      '5': 1500,
      '6': 2100,
      '7': 2800
    }

    let xp = 0;
    // const session = 10;
    // const sesh = document.querySelector(".sesh");
    const progress = document.getElementById("progress");     //the fill of the xp bar
    const nextLevel = document.getElementById("next-level");       //xp bar text
    const session = Number(progress.dataset.minutes);
    console.log(session);                                                            //total mintues in all sessions
    const user_level = progress.dataset.level;                 //Level of the user
    const level = maxExp[user_level];                          //the max value of the level range
    const nextLevelXP = level - session;                       // the xp left to get to next level
    console.log(level);
    function updateCounters() {
      let color = progress.style.backgroundColor;
      let fill = progress.style.width;
      xp = (session / level) * 100;
      console.log(xp);
      if (xp <= 110) {
        console.log("howdy");
        progress.style.backgroundColor = "$smoke-grey";
        progress.style.width = `${xp}%`;
      } else if (xp <= 300) {
        console.log("You Leveled up!!");
        // insert alert to say level 2
        progress.style.width = `${xp}%`;
        progress.style.backgroundColor = "cyan";
      } else if (xp <= 600) {
        // insert alert to say level 3
        progress.style.width = `${xp}%`;
        progress.style.backgroundColor = "cyan";
      } else if (xp <= 1000) {
        // insert alert to say level 4
        progress.style.width = `${xp}%`;
        progress.style.backgroundColor = "cyan";
      } else if (xp <= 1500) {
        // insert alert to say level 5
        progress.style.width = `${xp}%`;
        progress.style.backgroundColor = "cyan";
      } else if (xp <= 2100) {
        // insert alert to say level 6
        progress.style.width = `${xp}%`;
        progress.style.backgroundColor = "cyan";
      } else {
        // insert alert to say level 7
        progress.style.width = `${xp}%`;
        progress.style.backgroundColor = "cyan";
      }
      nextLevel.innerHTML = `${nextLevelXP} minutes to next level`;
    }

    // setInterval(updateCounters, 2000);
    updateCounters();
  }
}
// Transition on PAGE LOAD

  // NEED TO FIX AFTER PULLING
// Transition to make the bar load up to a certain % on page load (set interval)
// Connect the xp to the minutes that are actually studied
  // connect to user model?
// make the function listen to when the timer is done? or the value that is input into the intention thing?


// 1. study_sessions.pluck to get total minutes;
