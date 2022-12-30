import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {

  connect() {
    // console.log("Hello from navbar controller!")
    // console.log(this.navbarTarget)
  }

  updateNavbar() {
    if (window.scrollY >= window.innerHeight) {
      this.element.classList.add("nav-bg")
    } else {
      this.element.classList.remove("nav-bg")
    }
  }
}
