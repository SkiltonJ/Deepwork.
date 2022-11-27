import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tab"
export default class extends Controller {
  connect() {
    console.log("howdy")
    const tabs = document.querySelectorAll(".nav-link");
    const contentContainer = document.getElementById("content");

    // tabs.forEach(clickedTab => {
    //   clickedTab.addEventListener('click', (e) => {
    //     tabs.forEach(tab => {
    //       tab.classList.remove('active');
    //       e.thisTarget.classList.add('active');
    //     });
    //   });
    // });
  }
}
