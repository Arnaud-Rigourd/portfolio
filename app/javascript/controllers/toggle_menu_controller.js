import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-menu"
export default class extends Controller {
  static targets = ["burgerMenu", "dropdownList"]

  connect() {
  }

  toggleAction() {
    this.dropdownListTarget.classList.toggle('hidden')
    this.burgerMenuTarget.classList.toggle('fa-bars')
    this.burgerMenuTarget.classList.toggle('fa-xmark')
  }
}
