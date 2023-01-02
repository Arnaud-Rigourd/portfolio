import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["navbar", "wrapper"]

  // connect() {
  // }

  updateNavbar() {
    if (this.wrapperTarget.scrollTop >= (window.innerHeight - 66)) {
      this.navbarTarget.classList.add("nav-bg")
    } else {
      this.navbarTarget.classList.remove("nav-bg")
    }
  }
}
