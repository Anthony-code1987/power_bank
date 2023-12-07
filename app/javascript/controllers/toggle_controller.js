import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "triggerElement"]


  connect() {
    console.log("hello")
  }

  fire() {
    this.togglableElementTarget.classList.remove("d-none");
    this.triggerElementTarget.classList.add("d-none");
  }
}
