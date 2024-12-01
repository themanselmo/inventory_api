import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["content"];

  toggle(event) {
    event.preventDefault();
  
    const modalId = event.currentTarget.dataset.modalId;
    const modal = document.getElementById(`modal_${modalId}`);

    if (modal) {
      modal.classList.toggle("hidden");
    }
  }
}
