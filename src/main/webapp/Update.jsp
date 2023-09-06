<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.collage.admission.app.model.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

header {
	color: #fff;
	text-align: center;
	padding: 60px;
}

form {
	max-width: 600px;
	margin: 0 auto;
	background: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	font-weight: bold;
	display: block;
	margin-bottom: 5px;
}

input[type="text"], input[type="password"], input[type="email"], input[type="number"],
	select {
	width: 100%;
	padding: 5px 0; /* Adjusted padding */
	border: none;
	border-bottom: 1px solid #ccc; /* Underline instead of box */
	background: transparent;
	border-radius: 0;
	margin-bottom: 15px; /* Increased margin */
}

select {
	padding: 5px 0; /* Adjusted padding for select */
}

button {
	background-color: #009688;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
	background-color: #007B6E;
}
</style>
</head>
<body>
	
	<%
	Student stu = (Student) request.getAttribute("Student");
	if (stu != null) {
	%>
	<form
		action="UpdateServlet?firtsName=<%=stu.getFirstName()%>&lastName=<%=stu.getLastName()%>&gender=<%=stu.getGender()%>&dob=<%=stu.getDob()%>&email=<%=stu.getEmailId()%>&password=<%=stu.getPassword()%>&mobileNumber=<%=stu.getMobileNumber()%>"
		method="post">

		<label for="firstName">First Name:</label> <input type="text"
			id="firstName" name="firstName" placeholder="Enter First Name"
			value="<%=stu.getFirstName()%>"><br> <label
			for="lastName">Last Name:</label> <input type="text" id="lastName"
			name="lastName" placeholder="Enter Last Name"
			value="<%=stu.getLastName()%>"><br> <label for="gender">Gender:</label>
		<select name="gender" value="<%stu.getGender();%>" required>
			<option value="option">Select Gender</option>
			<option value="male">Male</option>
			<option value="female">Female</option>
			<option value="others">Others</option>
		</select><br> <label for="dob">Date of Birth:</label> <input type="date"
			id="dob" name="dob" placeholder="Enter Date of Birth"
			value="<%=stu.getDob()%>"><br> <label for="email">Email:</label>
		<input type="email" id="email" name="email" placeholder="Enter Email"
			value="<%=stu.getEmailId()%>"><br> <label for="password">Password:</label>
		<input type="password" id="password" name="password"
			placeholder="Enter Password" value="<%=stu.getPassword()%>"><br>
		<label for="gender">Department:</label> <select name="department"
			required>
			<option value="option">Select Department</option>
			<option value="cse">CSE</option>
			<option value="ece">ECE</option>
			<option value="eee">EEE</option>
			<option value="mech">MECH</option>
		</select> <label for="mobileNumber">Mobile Number:</label> <input type="number"
			id="mobileNumber" name="mobileNumber"
			placeholder="Enter Mobile Number" value="<%=stu.getMobileNumber()%>"><br>
		<button>Update Student</button>
		<%
		}
		%>
	</form>
</body>
</html>
