import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["navbar", "wrapper"]

  connect() {
    // console.log(`scrollY = ${window.scrollY}`)
    // console.log(`scrollY = ${this.wrapperTarget.scrollTop}`)
    // console.log(window.innerHeight)
    // console.log(this.headerTarget.innerHeight)
  }

  updateNavbar() {
    // console.log(`scrollY = ${this.wrapperTarget.scrollTop}`)
    if (this.wrapperTarget.scrollTop >= window.innerHeight) {
      this.navbarTarget.classList.add("nav-bg")
    } else {
      this.navbarTarget.classList.remove("nav-bg")
    }
  }
}
