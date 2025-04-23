import { Application } from "@hotwired/stimulus"

const application = Application.start()
import "bootstrap"
// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
