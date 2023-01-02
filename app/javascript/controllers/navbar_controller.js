import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["navbar", "wrapper", "dropdownList", "toggleDiv"]

  connect() {
    if (window.innerWidth <= 576) {
      this.toggleDivTarget.classList.remove('hidden')
    } else {
      this.toggleDivTarget.classList.add('hidden')
    }

    window.addEventListener("resize", (event) => {
      if (window.innerWidth <= 576) {
        this.toggleDivTarget.classList.remove('hidden')
      } else {
        this.toggleDivTarget.classList.add('hidden')
      }
    })
  }

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
