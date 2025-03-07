document.getElementById("registrationForm").addEventListener("submit", function(event) {
    event.preventDefault();
    let isValid = true;

    let name = document.getElementById("name").value;
    if (!/^[A-Za-z ]+$/.test(name)) {
        document.getElementById("nameError").textContent = "Invalid name (only alphabets & spaces allowed)";
        isValid = false;
    } else {
        document.getElementById("nameError").textContent = "";
    }

    let age = document.getElementById("age").value;
    if (age < 18 || age > 60) {
        document.getElementById("ageError").textContent = "Age must be between 18 and 60";
        isValid = false;
    } else {
        document.getElementById("ageError").textContent = "";
    }

    let email = document.getElementById("email").value;
    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
        document.getElementById("emailError").textContent = "Invalid email format";
        isValid = false;
    } else {
        document.getElementById("emailError").textContent = "";
    }

    let pincode = document.getElementById("pincode").value;
    if (!/^\d{6}$/.test(pincode)) {
        document.getElementById("pincodeError").textContent = "PIN code must be 6 digits";
        isValid = false;
    } else {
        document.getElementById("pincodeError").textContent = "";
    }

    let password = document.getElementById("password").value;
    if (!/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/.test(password)) {
        document.getElementById("passwordError").textContent = "Password must be 8+ chars, 1 uppercase, 1 lowercase, 1 digit, 1 special character";
        isValid = false;
    } else {
        document.getElementById("passwordError").textContent = "";
    }

    if (isValid) {
        alert("🎉 Registration Successful!");
        document.getElementById("registrationForm").reset();
    }
});
