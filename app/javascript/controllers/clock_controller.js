import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="clock"
export default class extends Controller {
  connect() {
    const deg = 6;
    const hr = document.querySelector('#hr')
    const mn = document.querySelector('#mn')
    const sc = document.querySelector('#sc')

    setInterval(() => {

      let day = new Date();
      let hh = day.getHours() * 30;
      let mm = day.getMinutes() * deg;
      let ss = day.getSeconds() * deg;

      hr.style.transform = `rotateZ(${(hh)+(mm/12)}deg)`;
      mn.style.transform = `rotateZ(${mm}deg)`;
      sc.style.transform = `rotateZ(${ss}deg)`;

    });
  }
}
