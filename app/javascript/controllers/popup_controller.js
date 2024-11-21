import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
   static targets = ["root", "content"]

  connect() {
    this.initClickOutsideEventListener()
  }

  initClickOutsideEventListener() {
    this.rootTarget.addEventListener("click", (event) => {
      if (!this.popupContentTarget.contains(event.target)) {
        this.closePopup()
      }
    })
  }

  // close popup
  closePopup() {
   this.rootTarget.classList.add("d-none")
  }
}
