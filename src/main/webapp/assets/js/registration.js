
// Function to validate the name input (no dots allowed)
function validateNameInput(inputElement) {
    const inputValue = inputElement.value;
    if (inputValue.includes('.')) {
        showError("Name should not contain dots.");
        inputElement.value = inputValue.replace('.', ''); // Remove the dot
    }
}

// Function to validate the mobile number input (no negative numbers)
function validateMobileInput(inputElement) {
    const inputValue = inputElement.value;
    if (inputValue < 0) {
        showError("Mobile number cannot be negative.");
        inputElement.value = ''; // Clear the input
    }
}

// Function to show error message under the form button
function showError(errorMessage) {
    const errorElement = document.getElementById("error-message");
    if (errorElement) {
        errorElement.textContent = errorMessage;
    } else {
        errorElement = document.createElement("div");
        errorElement.id = "error-message";
        errorElement.textContent = errorMessage;
        errorElement.style.color = "red";
        var form = document.querySelector(".form");
        form.appendChild(errorElement);
    }
}

// Event listener to validate name input
const nameInput = document.querySelector("input[name='firstName']");
if (nameInput) {
    nameInput.addEventListener("input", function () {
        validateNameInput(this);
    });
}

// Event listener to validate mobile number input
const mobileInput = document.querySelector("input[name='mobileNumber']");
if (mobileInput) {
    mobileInput.addEventListener("input", function () {
        validateMobileInput(this);
    });
}
