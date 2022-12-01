import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loader"
export default class extends Controller {
  connect() {
    console.log("howdy");
    const myPreloader = document.querySelector('.preloader');
    const fadeOutEffect = setInterval(() => {
      if (!myPreloader.style.opacity) {
        myPreloader.style.opacity = 1;
      }
      if (myPreloader.style.opacity > 0) {
        myPreloader.style.opacity -= 0;
        myPreloader.style.display = "none";
      } else {
        clearInterval(fadeEffect);
      }
    }, 3800);
    window.addEventListener('load', fadeOutEffect());
  }
}
