import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="xp"
export default class extends Controller {
  connect() {

    let xp = 0;
    const session = 10;
    const sesh = document.querySelector(".sesh");
    const progress = document.getElementById("progress");

    sesh.addEventListener('click', () => {
      xp = xp + session;
      console.log(xp);
      const color = progress.style.backgroundColor;
      const fill = progress.style.width;
      function xpFill() {
        if (xp < 100) {
          console.log("howdy");
          color = "blue";
          fill = `${xp.toString()}%`;
        } else {
          console.log("You Leveled up!!");
          fill = "0%";
        }
      };
    });
  }
}



// function xpFill() {
//   sesh.addEventListener('click', () => {
//     xp = xp + session;
//     console.log(xp);
//     const fill = progress.style.width;
//   })
//   if (xp < 100) {
//     console.log("howdy");
//     fill = "blue";
//     fill = `${xp.toString()}%`;
//   } else {
//     console.log("You Leveled up!!");
//     fill = "0%";
//   }
// };
