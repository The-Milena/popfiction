import { Controller } from "@hotwired/stimulus"

static targets = ["togglableElement"]


// Connects to data-controller="toggle"
export default class extends Controller {
  connect() {
  }



  fire() {
    this.togglableElementTarget.classList.toggle("d-none");
  }

}
