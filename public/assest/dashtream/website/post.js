const cardsData = [
      { userImage: "https://randomuser.me/api/portraits/men/11.jpg", userName: "Amit Sharma", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/12.jpg", userName: "Priya Verma", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/13.jpg", userName: "Neha Gupta", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/men/14.jpg", userName: "Rahul Patel", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/15.jpg", userName: "Anjali Singh", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/16.jpg", userName: "Sneha Reddy", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/men/17.jpg", userName: "Vikram Kumar", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/18.jpg", userName: "Pooja Desai", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/19.jpg", userName: "Riya Malhotra", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/men/20.jpg", userName: "Arjun Mehta", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/21.jpg", userName: "Kavya Nair", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/22.jpg", userName: "Meera Joshi", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/men/23.jpg", userName: "Suresh Yadav", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/24.jpg", userName: "Divya Iyer", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/25.jpg", userName: "Shalini Rao", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/men/26.jpg", userName: "Rohan Kapoor", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/27.jpg", userName: "Tanya Chopra", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" },
      { userImage: "https://randomuser.me/api/portraits/women/28.jpg", userName: "Lakshmi Menon", title: "Study Material", image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=", donateLink: "/product-info.html" }
    ];

    const sectionData = [
      {
        sectionId: "medicine",
        itemId: "free-medicine-consultancy",
     
        doctors: [
          {
            name: "Dr. Anjali Mehta",
            image: "https://randomuser.me/api/portraits/women/44.jpg",
            available: true,
            specialization: "Cardiologist",
            rating: 4.5,
            contact: "+91 9876543210",
            address: "Apollo Hospital, Delhi",
            consultationTiming: "10:00 AM - 4:00 PM",
            servicesOffered: ["Heart Checkup", "ECG", "Blood Pressure Monitoring"]
          },
          {
            name: "Dr. Rajesh Khanna",
            image: "https://randomuser.me/api/portraits/men/42.jpg",
            available: false,
            specialization: "Dermatologist",
            rating: 4.2,
            contact: "+91 9123456780",
            address: "Max Hospital, Mumbai",
            consultationTiming: "11:00 AM - 5:00 PM",
            servicesOffered: ["Skin Treatment", "Acne Solutions"]
          }
          ,
          {
            name: "Dr. Rajesh Khanna",
            image: "https://randomuser.me/api/portraits/men/42.jpg",
            available: false,
            specialization: "Dermatologist",
            rating: 4.2,
            contact: "+91 9123456780",
            address: "Max Hospital, Mumbai",
            consultationTiming: "11:00 AM - 5:00 PM",
            servicesOffered: ["Skin Treatment", "Acne Solutions"]
          }
          ,
          {
            name: "Dr. Rajesh Khanna",
            image: "https://randomuser.me/api/portraits/men/42.jpg",
            available: false,
            specialization: "Dermatologist",
            rating: 4.2,
            contact: "+91 9123456780",
            address: "Max Hospital, Mumbai",
            consultationTiming: "11:00 AM - 5:00 PM",
            servicesOffered: ["Skin Treatment", "Acne Solutions"]
          }
           ,
          {
            name: "Dr. Rajesh Khanna",
            image: "https://randomuser.me/api/portraits/men/42.jpg",
            available: false,
            specialization: "Dermatologist",
            rating: 4.2,
            contact: "+91 9123456780",
            address: "Max Hospital, Mumbai",
            consultationTiming: "11:00 AM - 5:00 PM",
            servicesOffered: ["Skin Treatment", "Acne Solutions"]
          } ,
          {
            name: "Dr. Rajesh Khanna",
            image: "https://randomuser.me/api/portraits/men/42.jpg",
            available: false,
            specialization: "Dermatologist",
            rating: 4.2,
            contact: "+91 9123456780",
            address: "Max Hospital, Mumbai",
            consultationTiming: "11:00 AM - 5:00 PM",
            servicesOffered: ["Skin Treatment", "Acne Solutions"]
          } ,
          {
            name: "Dr. Rajesh Khanna",
            image: "https://randomuser.me/api/portraits/men/42.jpg",
            available: false,
            specialization: "Dermatologist",
            rating: 4.2,
            contact: "+91 9123456780",
            address: "Max Hospital, Mumbai",
            consultationTiming: "11:00 AM - 5:00 PM",
            servicesOffered: ["Skin Treatment", "Acne Solutions"]
          } ,
          {
            name: "Dr. Rajesh Khanna",
            image: "https://randomuser.me/api/portraits/men/42.jpg",
            available: false,
            specialization: "Dermatologist",
            rating: 4.2,
            contact: "+91 9123456780",
            address: "Max Hospital, Mumbai",
            consultationTiming: "11:00 AM - 5:00 PM",
            servicesOffered: ["Skin Treatment", "Acne Solutions"]
          }
        ]
      }
    ];

    const diagnostics = [
      {
        sectionId: "medicine",
        itemId: "free-diagnostics",
        centers: [
          {
            name: "Apollo Diagnostics",
            image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=",
            rating: 4.6,
            address: "123 Health Street, New Delhi",
            contact: "+91 9876543210",
            hours: "8:00 AM - 6:00 PM",
            services: ["Blood Test", "X-Ray", "ECG"]
          },
          {
            name: "Dr. Lal PathLabs",
            image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=",
            rating: 4.4,
            address: "456 Wellness Avenue, Mumbai",
            contact: "+91 9123456789",
            hours: "7:00 AM - 8:00 PM",
            services: ["Full Body Checkup", "MRI", "COVID Testing"]
          }
          ,
          {
            name: "Dr. Lal PathLabs",
            image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=",
            rating: 4.4,
            address: "456 Wellness Avenue, Mumbai",
            contact: "+91 9123456789",
            hours: "7:00 AM - 8:00 PM",
            services: ["Full Body Checkup", "MRI", "COVID Testing"]
          }
          ,
          {
            name: "Dr. Lal PathLabs",
            image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=",
            rating: 4.4,
            address: "456 Wellness Avenue, Mumbai",
            contact: "+91 9123456789",
            hours: "7:00 AM - 8:00 PM",
            services: ["Full Body Checkup", "MRI", "COVID Testing"]
          }
        ]
      }
    ];
     const freelabtest = [
      {
        sectionId: "medicine",
        itemId: "free-lab-tests",
        centers: [
          {
            name: "Apollo Diagnostics",
            image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=",
            rating: 4.6,
            address: "123 Health Street, New Delhi",
            contact: "+91 9876543210",
            hours: "8:00 AM - 6:00 PM",
            services: ["Blood Test", "X-Ray", "ECG"]
          },
          {
            name: "Dr. Lal PathLabs",
            image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=",
            rating: 4.4,
            address: "456 Wellness Avenue, Mumbai",
            contact: "+91 9123456789",
            hours: "7:00 AM - 8:00 PM",
            services: ["Full Body Checkup", "MRI", "COVID Testing"]
          }
          ,
          {
            name: "Dr. Lal PathLabs",
            image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=",
            rating: 4.4,
            address: "456 Wellness Avenue, Mumbai",
            contact: "+91 9123456789",
            hours: "7:00 AM - 8:00 PM",
            services: ["Full Body Checkup", "MRI", "COVID Testing"]
          }
          ,
          {
            name: "Dr. Lal PathLabs",
            image: "https://media.istockphoto.com/id/1318198538/photo/woman-puts-donations-in-a-box.jpg?s=612x612&w=0&k=20&c=XWa5VjQmm-5edFpwYP_O9uKa7MDii5SenuqjWCX7UE4=",
            rating: 4.4,
            address: "456 Wellness Avenue, Mumbai",
            contact: "+91 9123456789",
            hours: "7:00 AM - 8:00 PM",
            services: ["Full Body Checkup", "MRI", "COVID Testing"]
          }
        ]
      }
    ];

    // URL Parameters
    const urlParams = new URLSearchParams(window.location.search);
    console.log(urlParams)
    const sectionId = urlParams.get("section");
    const itemId = urlParams.get("item");
    const container = document.getElementById("card-container");

    // Function to create HTML for each donation card
    function createCardHTML(data) {
      return `
        <div class="col-lg-3 col-md-4 col-sm-6 d-flex justify-content-center mb-4">
          <div class="custom-card w-100 position-relative d-flex flex-column">
            <div class="card-image">
              <img src="${data.image}" alt="Card Image" class="img-fluid" />
            </div>
            <div class="card-content d-flex flex-column flex-grow-1">
              <h3 class="card-title">${data.title}</h3>
              <p class="card-description">An exploration into the truck’s polarising design</p>
                         <a href="${data.donateLink}" class="donate-btn">Request Donation</a>

            </div>
          </div>
        </div>
      `;
    }

    // Function to render doctor card
    function renderDoctorCard(doctor, index) {
      return `
        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
          <div class="card h-100 shadow p-3 d-flex flex-column w-100">
            <div class="d-flex align-items-center mb-3">
              <img src="${doctor.image}" alt="${doctor.name}" class="rounded-circle mr-3" style="width: 60px; height: 60px; object-fit: cover;">
              <div class="ms-3">
                <h5 class="mb-0">${doctor.name}</h5>
                <small class="text-muted">${doctor.specialization}</small><br>
                <span class="badge ${doctor.available ? 'badge-success' : 'badge-danger'}">
                  ${doctor.available ? 'Available' : 'Not Available'}
                </span>
              </div>
            </div>
            <div class="mb-2">
              <strong>Rating:</strong> ${'⭐'.repeat(Math.round(doctor.rating))} 
              <small class="text-muted">(${doctor.rating}/5)</small>
            </div>
            <div class="mt-auto">
            
              <div class="d-flex gap-2">
                <a href="tel:${doctor.contact}" class="btn btn-sm btn-success d-flex align-items-center justify-content-center" style="flex: 1;">
                  <i class="fas fa-phone-alt mr-2"></i>
                </a>
                <button class="btn btn-sm btn-outline-secondary d-flex align-items-center justify-content-center" style="flex: 3;" data-toggle="modal" data-target="#doctorModal" onclick="showDoctorDetails(${index})">
                  <i class="fas fa-info-circle me-2"></i> View All Details
                </button>
              </div>
            </div>
          </div>
        </div>
      `;
    }
function renderDiagnosticCard(center, index) {
  return `
    <div class="col-sm-12 col-md-6 col-lg-6 mb-4">
      <div class="card h-100 shadow-lg border-0 w-100">
        <div class="row g-0 h-100">
          <!-- Left: Image (40% width) -->
          <div class="col-md-5 position-relative">
            <img src="${center.image}" alt="${center.name}" 
                 class="img-fluid rounded-start h-100 w-100" 
                 style="object-fit: cover; min-height: 250px;">
            <span class="badge bg-primary position-absolute top-0 start-0 m-2">
              ⭐ ${center.rating}/5
            </span>
          </div>
          
          <!-- Right: Content (60% width) -->
          <div class="col-md-7 d-flex flex-column p-4 bg-white rounded-end">
            <h4 class="mb-2 text-primary">${center.name}</h4>
            <div class="mb-3">
              <p class="mb-2"><strong><i class="fas fa-map-marker-alt me-2"></i>Address:</strong> ${center.address}</p>
              <p class="mb-2"><strong><i class="fas fa-clock me-2"></i>Hours:</strong> ${center.hours}</p>
              <p class="mb-3"><strong><i class="fas fa-list me-2"></i>Services:</strong> ${center.services.join(", ")}</p>
            </div>

            <div class="mt-auto d-flex gap-2">
  <a href="tel:${center.contact}"
     class=" d-flex align-items-center justify-content-center"
     style="background-color: #28a745; color: white; padding: 0.5rem 0.75rem; font-size: 1rem; border-radius: 0.375rem; text-decoration: none; gap: 0.5rem;">
    <i class="fas fa-phone-alt"></i>
    <span>Call Now</span>
  </a>

  <button onclick="showDiagnosticDetails(${index})"
     class="d-flex align-items-center justify-content-center"
     style="border: 1px solid #0d6efd; background-color: transparent; color: #0d6efd; padding: 0.5rem 0.75rem; font-size: 1rem; border-radius: 0.375rem; gap: 0.5rem;">
    <i class="fas fa-info-circle"></i>
    <span>Details</span>
  </button>
</div>

          </div>
        </div>
      </div>
    </div>
  `;
}
    // Function to show doctor details in modal
    function showDoctorDetails(index) {
      const doctor = sectionData[0].doctors[index];
      document.getElementById('modalImage').src = doctor.image;
      document.getElementById('modalImage').alt = doctor.name;
      document.getElementById('modalName').textContent = doctor.name;
      document.getElementById('modalSpecialization').textContent = doctor.specialization;
      document.getElementById('modalRating').innerHTML = `${'⭐'.repeat(Math.round(doctor.rating))} (${doctor.rating}/5)`;
      document.getElementById('modalContact').textContent = doctor.contact;
      document.getElementById('modalAddress').textContent = doctor.address;
      document.getElementById('modalAvailability').textContent = doctor.available ? 'Available' : 'Not Available';
      document.getElementById('modalTiming').textContent = doctor.consultationTiming;
      const servicesList = document.getElementById('modalServices');
      servicesList.innerHTML = '';
      doctor.servicesOffered.forEach(service => {
        const li = document.createElement('li');
        li.textContent = service;
        servicesList.appendChild(li);
      });
      $('#doctorModal').modal('show');
    }

   function showDiagnosticDetails(index) {
  const params = new URLSearchParams(window.location.search);
  const sectionId = params.get("section");
  let itemId = params.get("item");
  if (itemId === "free-diagnostics") itemId = "free-lab-tests";

  const matchedDiagnostic = diagnostics.find(
    item => item.sectionId === sectionId && item.itemId === itemId
  );

  if (!matchedDiagnostic || !matchedDiagnostic.centers[index]) return;

  const center = matchedDiagnostic.centers[index];

  // Populate modal content
  document.getElementById("modalCenterImage").src = center.image;
  document.getElementById("modalCenterImage").alt = center.name;
  document.getElementById("modalCenterName").textContent = center.name;
  document.getElementById("modalCenterAddress").textContent = center.address;
  document.getElementById("modalCenterHours").textContent = center.hours;
  document.getElementById("modalCenterServices").textContent = center.services.join(", ");
  document.getElementById("modalCenterContact").textContent = center.contact;
  document.getElementById("modalCenterContact").href = `tel:${center.contact}`;
}


    // Function to display cards based on URL parameters
  function displayCards() {
  // Clear container first
  container.innerHTML = '';
  
  try {
    // Find matching items
    const matchedItem = sectionData.find(
      item => item.sectionId === sectionId && item.itemId === itemId
    );
    
    const matchedDiagnostic = diagnostics.find(
      item => item.sectionId === sectionId && item.itemId === itemId
    );
     const matchedFreelabtest = freelabtest.find(
      item => item.sectionId === sectionId && item.itemId === itemId
    );

    // Determine which content to display
    if (matchedItem) {
      if (matchedItem.doctors?.length > 0) {
        container.innerHTML = matchedItem.doctors.map((doctor, index) => 
          renderDoctorCard(doctor, index)
        ).join("");
      } 
      else if (matchedItem.volunteers?.length > 0) {
        container.innerHTML = matchedItem.volunteers.map((volunteer, index) => 
          renderVolunteerCard(volunteer, index)
        ).join("");
      }
      else {
        showNoDataMessage();
      }
    } 
    else if (matchedDiagnostic?.centers?.length > 0) {
      container.innerHTML = matchedDiagnostic.centers.map((center, index) => 
        renderDiagnosticCard(center, index)
      ).join("");
    }
     else if (matchedFreelabtest?.centers?.length > 0) {
      container.innerHTML = matchedFreelabtest.centers.map((center, index) => 
        renderDiagnosticCard(center, index)
      ).join("");
    }
    else {
      // Fallback to generic cards if no specific match found
      if (cardsData?.length > 0) {
        container.innerHTML = cardsData.map((card, index) => 
          createCardHTML(card, index)
        ).join('');
      } else {
        showNoDataMessage();
      }
    }
  } catch (error) {
    console.error("Error displaying cards:", error);
    container.innerHTML = `
      <div class="alert alert-danger">
        Error loading content. Please try again later.
      </div>
    `;
  }
}

// Helper function for no data message
function showNoDataMessage() {
  container.innerHTML = `
    <div class="text-center py-5">
      <i class="fas fa-info-circle fa-3x text-muted mb-3"></i>
      <h4 class="text-muted">No relevant data to show</h4>
      <p class="text-muted">Please check back later or try another category</p>
    </div>
  `;
}

    // Call the function to display cards when the page is loaded
    window.onload = displayCards;