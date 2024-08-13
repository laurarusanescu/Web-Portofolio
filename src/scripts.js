function viewCV() {
    const cv = document.getElementById('cv');
    if (cv.classList.contains('hidden')) {
        cv.classList.remove('hidden');
    } else {
        cv.classList.add('hidden');
    }
}

function showContactInfo() {
    const contactInfo = document.getElementById('contactInfo');
    if (contactInfo.classList.contains('hidden')) {
        contactInfo.classList.remove('hidden');
    } else {
        contactInfo.classList.add('hidden');
    }
}

document.getElementById('contactForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent the default form submission

    // Gather form data
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const message = document.getElementById('message').value;

    // Basic form validation
    if (name && email && message) {
        alert(`Thank you, ${name}! Your message has been sent.`);
        // Here you would typically send the data to a server using fetch or XMLHttpRequest
    } else {
        alert('Please fill out all fields.');
    }
});
