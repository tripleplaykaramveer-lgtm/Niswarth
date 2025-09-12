  <footer class="bg-gray-600  pb-4 "style="background-color: #f1f5f9;">
      <div class="container ">
          <div class="row g-4 p-3">

              <!-- About Us -->
              <div class="col-md-4">
                  <h5 class="mb-3 fs-2">Who We Are</h5>
                  <p class="small opacity-75">
                      We’re on a mission to make essential services like education, medicine, and food accessible to
                      all. Your donation helps change lives and build a better tomorrow.
                  </p>
                  <div class="d-flex mt-3">
                      <a href="#!" class="me-3 text-light fs-5"><i class="fab fa-facebook-f"></i></a>
                      <a href="#!" class="me-3 text-light fs-5"><i class="fab fa-twitter"></i></a>
                      <a href="#!" class="me-3 text-light fs-5"><i class="fab fa-instagram"></i></a>
                      <a href="#!" class="text-light fs-5"><i class="fab fa-linkedin-in"></i></a>
                  </div>
              </div>

              <!-- Quick Links -->
              <div class="col-md-2">
                  <h6 class="mb-3">Quick Links</h6>
                  <ul class="list-unstyled small">
                      <li><a href="#!" class="text-dark text-decoration-none">Home</a></li>
                      <li><a href="#!" class="text-dark text-decoration-none">Causes</a></li>
                      <li><a href="#!" class="text-dark text-decoration-none">Events</a></li>
                      <li><a href="#!" class="text-dark text-decoration-none">Donate</a></li>
                      <li><a href="#!" class="text-dark text-decoration-none">Contact</a></li>
                  </ul>
              </div>

              <!-- Get Involved -->
              <div class="col-md-3">
                  <h6 class="mb-3">Get Involved</h6>
                  <ul class="list-unstyled small">
                      <li><a href="#!" class="text-dark text-decoration-none">Volunteer With Us</a></li>
                      <li><a href="#!" class="text-dark text-decoration-none">Become a Partner</a></li>
                      <li><a href="#!" class="text-dark text-decoration-none">Sponsorship Opportunities</a></li>
                      <li><a href="#!" class="text-dark text-decoration-none">Start a Campaign</a></li>
                  </ul>
              </div>

              <!-- Donate CTA / Contact -->
              <div class="col-md-3">
                  <h6 class="mb-3">Support Our Cause</h6>
                  <p class="small opacity-75">Every contribution counts. Help us provide free food, medicine, and
                      education to those in need.</p>
                  <a href="#donate" class=" card-button btn  btn-sm fw-semibold px-4 mb-3">Donate Now</a>
                  <p class="small mb-0"><strong>Email:</strong> <a href="mailto:info@donate.org"
                          class="text-dark text-decoration-none">info@donate.org</a></p>
                  <p class="small"><strong>Phone:</strong> <a href="tel:+1234567890"
                          class="text-dark text-decoration-none">+1 234 567 890</a></p>
              </div>
          </div>

          <hr class="border-secondary my-4 ">

          <!-- Bottom Row -->
          <div class="d-flex flex-column flex-md-row justify-content-between align-items-center small">
              <div class="text-muted">© 2025 HopeForAll Foundation. All rights reserved.</div>
              <div>
                  <a href="#!" class="text-dark text-decoration-none me-3">Privacy Policy</a>
                  <a href="#!" class="text-dark text-decoration-none">Terms & Conditions</a>
              </div>
          </div>
      </div>
  </footer>

  <div class="modal fade" id="detailModal" tabindex="-1" aria-labelledby="detailModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-xl">
          <div class="modal-content custom-stepper-modal">
              <div class="modal-body d-flex p-0">
                  <!-- Left: Stepper -->
                  <div class="modal-stepper-left p-4 text-white">
                      <div class="progress-line"></div>
                      <div class="progress-fill" id="progressFill"></div>
                      <div id="stepperSteps"></div>
                  </div>

                  <!-- Right: Dynamic Content -->
                  <div class="modal-stepper-right p-4 flex-grow-1">
                      <button type="button" class="btn-close float-end" data-bs-dismiss="modal"
                          aria-label="Close"></button>
                      <h5 class="mb-4" id="detailModalLabel">Donate</h5>
                      <div id="modalBodyContent"></div>
                  </div>
              </div>
          </div>
      </div>
  </div>
