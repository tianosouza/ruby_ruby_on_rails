import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comments"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element)
  }

  toggleForm(event) {
    event.preventDefault()
    event.stopPropagation()
    console.log(event)
    const formId = event.params["form"]
    const commentBodyId = event.params["body"]

    const form = document.getElementById(formId)
    const commentBody = document.getElementById(commentBodyId)

    form.classList.toggle("d-none")
    form.classList.toggle("mt-5")

    commentBody.classList.toggle("d-none")
    

    
  }
}
