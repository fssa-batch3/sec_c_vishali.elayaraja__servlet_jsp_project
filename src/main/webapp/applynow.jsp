<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import=" com.fssa.collage.admission.app.service.StudentService"%>
<%@page import=" com.fssa.collage.admission.app.model.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./applynow.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>

	<main>
		<%
		String user = (String) session.getAttribute("LoggedStudent");
		System.out.println(user);
		Student student = StudentService.findStudentByEmail(user);
		%>
		<div class="container">
			<span class="big-circle"></span> <img
				src="https://iili.io/JJAAPwb.png" class="square" alt="icon" />
			<header>Application Form</header>
			<form action="ApplyNowServlet" method="post" class="form">
				<div class="input-box">
					<label for="firstName">First Name</label> <input type="text"
						placeholder="First name" name="firstName"
						value="<%=student.getFirstName()%>" required />
				</div>
				<div class="input-box">
					<label for="lastName">Last Name</label> <input type="text"
						placeholder="Last name" name="lastName"
						value="<%=student.getLastName()%>" required />
				</div>
				<div class="input-box">
					<label for="email">Email Address</label> <input type="text"
						placeholder="Enter email address" name="email"
						value="<%=student.getEmailId()%>" required />
				</div>
				<div class="column">
					<div class="input-box">
						<label for="mobileNumber">Phone Number</label> <input
							type="number" placeholder="Enter phone number"
							name="mobileNumber" value="<%=student.getMobileNumber()%>"
							required />
					</div>
					<div class="input-box">
						<label for="dob">Birth Date</label> <input type="date"
							placeholder="Enter birth date" name="dob"
							value="<%=student.getDob()%>" required />
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
							<input type="radio" id="check-female" name="gender"
								value="female" /> <label for="check-female">Female</label>
						</div>
						<div class="gender">
							<input type="radio" id="check-other" name="gender" value="others" />
							<label for="check-other">Others</label>
						</div>
					</div>
					<div class="input-box">
						<label for="department">Department</label> <select
							name="department" required>
							<option value="option">Department</option>
							<option value="cse">CSE</option>
							<option value="ece">ECE</option>
							<option value="eee">EEE</option>
							<option value="mech">MECH</option>
						</select>
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

					<p style="color: red; text-align: center"><%=errormessage%></p>
					<%
					}
					%>


					<button type="submit">Apply now</button>
				</div>

			</form>
		</div>
		<div class="exit">
			<span href="./home.jsp" class="fa-solid fa-circle-arrow-left"
				style="color: #0e1010;"></span>
		</div>
	</main>
	<script src="./contact.js"></script>
</body>
</html>