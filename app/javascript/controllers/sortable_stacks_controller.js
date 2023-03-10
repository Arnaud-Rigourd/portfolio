import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"

export default class extends Controller {
  static targets = ["stack"]
  static values = { sortUrl: String }

  connect() {
    Sortable.create(this.element, {
      ghostClass: "ghost",
      animation: 150,
      onEnd: (event) => {
        const csrfToken = document.getElementsByName("csrf-token")[0].content;

        this.stackOrdered = []
        this.stackTargets.forEach ((stack) => {
          this.stackOrdered.push(parseInt(stack.dataset.stackId, 10))
        })

        const formData = new FormData();
        formData.append("stackOrdered", this.stackOrdered)

        fetch(this.sortUrlValue, {method: "POST",
        headers: { Accept: "application/json", "X-CSRF-Token": csrfToken },
        body: formData
        })
      }
    })
  }
}
