<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./assets/css/register.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<span class="big-circle"></span> <img
			src="https://iili.io/JJAAPwb.png" class="square" alt="icon" />
		<header>
			<p>Registration Form
		</header>
		<form action="RegistrationServlet" method="post" class="form">
			<div class="input-box">
				<label for="firstName">First Name</label> <input type="text"
					placeholder="First name" name="firstName" required />
			</div>
			<div class="input-box">
				<label for="lastName">Last Name</label> <input type="text"
					placeholder="Last name" name="lastName" required  />
			</div>
			<div class="input-box">
				<label for="email">Email Address</label> <input type="text"
					placeholder="Enter email address" name="email" required />
			</div>
			<div class="column">
				<div class="input-box">
					<label for="mobileNumber">Phone Number</label> <input
						placeholder="Enter phone number" name="mobileNumber" required onkeypress="return event.charCode >= 48 && event.charCode <= 57" maxlength="10" />
				</div>
				<span class="circle one"></span>
				 <span class="circle two"></span>
				<div class="input-box">
					<label for="dob">Birth Date</label> <input type="date"
						placeholder="Enter birth date" name="dob" required />
				</div>
			</div>
			<div class="gender-box">
				<h3>Gender</h3>
				<div class="gender-option">
					<div class="gender">
						<input type="radio" id="check-male" name="gender" value="male"
							checked /> <label for="check-male">male</label>
					</div>
					<div class="gender">
						<input type="radio" id="check-female" name="gender" value="Female" />
						<label for="check-female">female</label>
					</div>
					<div class="gender">
						<input type="radio" id="check-other" name="gender" value="others" />
						<label for="check-other">Others</label>
					</div>
				</div>
			</div>
			<div class="input-box">
				<label for="password1">Password</label> <input type="password"
					placeholder="Enter your password" name="password" required />
			</div>
			<div class="input-box">
				<label for="password2">Confirm Password</label> <input
					type="password" placeholder="Re-enter your Password"
					name="confirmpass" required />
			</div>
			<br>

			<%
			String successmessage = (String) request.getAttribute("Successmessage");
			String errormessage = (String) request.getAttribute("ErrorMessage");
			%>

			<%
			if (successmessage != null) {
			%>

			<p><%=successmessage%></p>
			<%
			}
			%>
			<%
			if (errormessage != null) {
			%>

			<p style="color: red"><%=errormessage%></p>
			<%
			}
			%>
			<div class="input-box">
				<span class="Signup-btn">Already have an account?</span> <a
					href="./login.jsp">Login</a>
			</div>
			<button type="submit">Submit</button>
		</form>
	</div>
	<script>
		function validateInput(inputElement) {
			// Get the input value
			const inputValue = inputElement.value;

			// Check if the input contains dots or spaces
			if (inputValue.includes('.') || inputValue.includes(' ')) {
				// Display an error message (you can customize this part)
				alert("Input should not contain dots or spaces.");

				// Clear the input field
				inputElement.value = '';

				// Prevent form submission
				return false;
			}

			// If the input is valid, return true
			return true;
		}

		function validateForm() {
			// You can add more validation here if needed

			// Return true to allow form submission
			return true;
		}
	</script>

	<script>
		function validatePhoneNumber(inputElement) {
			// Get the input value
			const inputValue = inputElement.value;

			// Remove any leading zeros to prevent issues with parseInt
			inputValue = inputValue.replace(/^0+/, '');

			// Check if the input is not a valid number
			if (isNaN(inputValue) || inputValue < 0) {
				// Display an error message (you can customize this part)
				alert("Invalid phone number.");

				// Clear the input field
				inputElement.value = '';
			}
		}
	</script>


	<script src="../assets/js/registration.js"></script>
</body>
</html>