<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.collage.admission.app.model.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Student stu = (Student) request.getAttribute("Student");
	%>


	<form action="UpdateServlet" method="post">




		<%
		if (stu != null) {
		%>
		<label for="firstName">First Name:</label> <input type="text"
			id="firstName" name="firstName" value="<%=stu.getFirstName()%>"><br>
		<br> <br> <label for="lastName">Last Name:</label> <input
			type="text" id="lastName" name="lastName"
			value="<%=stu.getLastName()%>"><br> <br> <br>
		<label for="gender">Gender:</label> <select name="gender"
			value="<%=stu.getGender()%>" required>
			<option value="option">gender</option>
			<option value="male">Male</option>
			<option value="female">Female</option>
			<option value="others">others</option>
		</select> <br> <br> <label for="dob">Date of Birth:</label> <input
			type="date" id="dob" name="dob" placeholder="(yyyy-MM-dd)"
			value="<%=stu.getDob()%>"><br> <br> <br> <label
			for="email">Email:</label> <input type="email" id="email"
			name="email" value="<%=stu.getEmailId()%>"><br> <br>
		<br> <label for="password">Password:</label> <input
			type="password" id="password" name="password"
			value="<%=stu.getPassword()%>"><br> <br> <br>

		<label for="gender">Department:</label> <select name="department"
			required>
			<option value="option">department</option>
			<option value="cse">CSE</option>
			<option value="ece">ECE</option>
			<option value="eee">EEE</option>
			<option value="mech">MECH</option>
		</select> <label for="mobileNumber">Mobile Number:</label> <input type="number"
			id="mobileNumber" name="mobileNumber"
			value="<%=stu.getMobileNumber()%>"><br> <br> <br>
		<button type="submit">Add Student</button>
		<%
		}
		%>



	</form>

</body>
</html>