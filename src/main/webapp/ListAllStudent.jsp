<%@page import="com.fssa.collage.admission.app.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student List</title>
</head>
<body>
	<div class="sidebar">
		<a href="#">Home</a> <a href="AddStudent.jsp">Apply</a> <a href="#">Contact
			Us</a>
	</div>

	<div class="main">
		<br> <br>
		<h1>Student List</h1>

		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gender</th>
				<th>Date of Birth</th>
				<th>Email</th>
				<th>Mobile Number</th>
				<th>Status</th>
				<th>Actions</th>
			</tr>
			<%
			List<Student> studentList = (List<Student>) request.getAttribute("studentList");
			if (studentList != null && !studentList.isEmpty()) {
				for (Student student : studentList) {
			%>
			<tr>
				<td><%=student.getFirstName()%></td>
				<td><%=student.getLastName()%></td>
				<td><%=student.getGender()%></td>
				<td><%=student.getDob()%></td>
				<td><%=student.getEmailId()%></td>
				<td><%=student.getMobileNumber()%></td>
				<td><%=student.getStatus() %></td>
				<td><a
					href="Edit?action=accept&email=<%=student.getEmailId()%>"
					class="button edit">Accept</a> <a
					href="Edit?action=reject&email=<%=student.getEmailId()%>"
					class="button delete">Reject</a></td>
			</tr>
			<%
			}
			} else {
			%>
			<tr>
				<td colspan="7">No students found.</td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<style>
/* Reset some default styles */
body, h1, h2, p {
	margin: 0;
	padding: 0;
}

/* Style the page body */
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	color: #333;
	margin: 0;
}

/* Style the side navigation bar */
.sidebar {
	height: 100%;
	width: 250px;
	position: fixed;
	top: 0;
	left: 0;
	background-color: #00b4d8;
	overflow-x: hidden;
	padding-top: 20px;
}

.sidebar a {
	padding: 15px 25px;
	text-decoration: none;
	font-size: 20px;
	color: #000;
	display: block;
}

.sidebar a:hover {
	background-color: #72ddf7;
	color: white;
}

@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body {
	background: #f2f2f2;
	font-family: 'Open Sans', sans-serif;
}

.search-bar {
	position: absolute;
	top: 10px;
	left: 40vh;
	width: 100vh;
	height: 10vh;
}

.search {
	width: 100%;
	position: relative;
	display: flex;
}

.searchTerm {
	width: 100%;
	border: 3px solid #00B4CC;
	border-right: none;
	padding: 5px;
	height: 20px;
	border-radius: 5px 0 0 5px;
	outline: none;
	color: #9DBFAF;
}

.searchTerm:focus {
	color: #00B4CC;
}

.searchButton {
	width: 40px;
	height: 36px;
	border: 1px solid #00B4CC;
	background: #00B4CC;
	text-align: center;
	color: #fff;
	border-radius: 0 5px 5px 0;
	cursor: pointer;
	font-size: 20px;
}

/*Resize the wrap to see the search bar change!*/
.wrap {
	width: 30%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
/* Style the main content */
.main {
	margin-left: 260px;
	padding: 20px;
	margin-top: 5%;
}

/* Style the students table */
table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

/* Style the buttons */
.button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #007BFF;
	color: #fff;
	border: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	margin: 4px 2px;
	border-radius: 5px;
}

.button.edit {
	background-color: #28a745;
}

.button.delete {
	background-color: #dc3545;
}

/* Style the links */
a {
	text-decoration: none;
	color: #007BFF;
}

a:hover {
	text-decoration: underline;
}
</style>



</body>
</html>
