import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"

// Connects to data-controller="sortable-projects"
export default class extends Controller {
  static targets = ["project"]
  static values = { sortUrl: String }

  connect() {
    Sortable.create(this.element, {
      ghostClass: "ghost",
      animation: 150,
      onEnd: (event) => {
        const csrfToken = document.getElementsByName("csrf-token")[0].content;

        this.projectOrdered = []
        this.projectTargets.forEach ((project) => {
          this.projectOrdered.push(parseInt(project.dataset.projectId, 10))
        })

        const formData = new FormData();
        formData.append("projectOrdered", this.projectOrdered)

        fetch(this.sortUrlValue, {method: "POST",
        headers: { Accept: "application/json", "X-CSRF-Token": csrfToken },
        body: formData
        })
      }
    })
  }
}
