import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tab-button"
export default class extends Controller {
  static targets = ["all", "user", "checked"]
  connect() {
    console.log("connected");

  }

  on() {
    if (this.checkedTarget.checked) {
      this.userTarget.classList.remove("d-none")
      this.allTarget.classList.add("d-none")
    } else {
      this.userTarget.classList.add("d-none")
      this.allTarget.classList.remove("d-none")
    }
  }
}
