import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["navbar", "wrapper", "dropdownList"]

  // connect() {
  // }

  updateNavbar() {
    if (this.wrapperTarget.scrollTop >= (window.innerHeight - 66)) {
      this.navbarTarget.classList.add("nav-bg")
      this.dropdownListTarget.classList.add("nav-bg")
    } else {
      this.navbarTarget.classList.remove("nav-bg")
      this.dropdownListTarget.classList.remove("nav-bg")
    }
  }
}
