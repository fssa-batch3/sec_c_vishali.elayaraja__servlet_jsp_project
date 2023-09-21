<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
}

.container {
	width: 400px;
	margin: 20px auto;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
}

label {
	font-weight: bold;
}

input, select {
	width: 100%;
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button {
	background: linear-gradient(90deg, rgba(87, 178, 208, 1) 0%,
		rgba(55, 196, 141, 1) 0%, rgba(0, 180, 216, 1) 97%);
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<h1>Registration Form</h1>
	<form action="AddStudent" method="post" class="container">
		<label for="firstName">First Name:</label> <input type="text"
			id="firstName" name="firstName"><br> <br> <label
			for="lastName">Last Name:</label> <input type="text" id="lastName"
			name="lastName"><br> <br> <label for="gender">Gender:</label>
		<select name="gender" required>
			<option value=<option value="option">Gender</option>
			"male">Male</option>
			<option value="female">Female</option>
			<option value="others">Others</option>
		</select><br> <br> <label for="dob">Date of Birth:</label> <input
			type="text" id="dob" name="dob" placeholder="(yyyy-MM-dd)"><br>
		<br> <label for="email">Email:</label> <input type="email"
			id="email" name="email"><br> <br> <label
			for="password">Password:</label> <input type="password" id="password"
			name="password"><br> <br> <label for="department">Department:</label>
		<select name="department" required>
			<option value="option">Department</option>
			<option value="cse">CSE</option>
			<option value="ece">ECE</option>
			<option value="eee">EEE</option>
			<option value="mech">MECH</option>
		</select><br> <br> <label for="mobileNumber">Mobile Number:</label> <input
			type="number" id="mobileNumber" name="mobileNumber"><br>
		<br>

		<button type="submit">Apply</button>
	</form>
</body>
</html>
