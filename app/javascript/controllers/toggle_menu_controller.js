import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-menu"
export default class extends Controller {
  static targets = ["burgerMenu", "dropdownList"]

  // connect() {
  // }

  toggleAction(event) {
    this.dropdownListTarget.classList.toggle('hidden')
    this.burgerMenuTarget.classList.toggle('fa-bars')
    this.burgerMenuTarget.classList.toggle('fa-xmark')
    event.stopPropagation()

    document.addEventListener('click', (e) => {
      if (this.dropdownListTarget.matches('.hidden')) {
        e.stopPropagation()
        return
      } else {
        this.dropdownListTarget.classList.toggle('hidden')
        this.burgerMenuTarget.classList.toggle('fa-bars')
        this.burgerMenuTarget.classList.toggle('fa-xmark')
        e.stopPropagation()
      }
    })
  }
}
