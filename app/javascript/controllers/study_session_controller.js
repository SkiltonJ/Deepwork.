import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="study-session"
export default class extends Controller {
  connect() {
    // console.log(this.element)
    this.element.click()
  }
}
