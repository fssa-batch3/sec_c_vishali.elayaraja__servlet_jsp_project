<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@page import="com.fssa.collage.admission.app.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./admin.css">
</head>
<body>

	<div class="sidebar">
		<h1>Admin</h1>
		<a href="#" autofocus>Dashboard</a> <a href="AddStudent.jsp">Apply</a>
		<a href="#">Settings</a> <a href="#">Log Out</a>
	</div>

	<div class="input-group">
		<input type="search" placeholder="Search Data...">
		<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="40"
			height="30" viewBox="0 0 50 50">
            <path
				d="M 21 3 C 11.601563 3 4 10.601563 4 20 C 4 29.398438 11.601563 37 21 37 C 24.355469 37 27.460938 36.015625 30.09375 34.34375 L 42.375 46.625 L 46.625 42.375 L 34.5 30.28125 C 36.679688 27.421875 38 23.878906 38 20 C 38 10.601563 30.398438 3 21 3 Z M 21 7 C 28.199219 7 34 12.800781 34 20 C 34 27.199219 28.199219 33 21 33 C 13.800781 33 8 27.199219 8 20 C 8 12.800781 13.800781 7 21 7 Z"></path>
            </svg>
	</div>
	<div class="cards-container">
		<div class="card">
			<div class="card-content">
				<p class="card-title">Card hover effect</p>
				<p class="card-para">Lorem ipsum dolor sit amet, consectetur
					adipiscing elit.</p>
			</div>
		</div>


		<div class="cards"></div>

		<div class="cards-3"></div>

	</div>

	<main class="table">
		<section class="table__body">
			<table>
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Gender</th>
						<th>Date Of Birth</th>
						<th>Mobile Number</th>
						<th>Email</th>
						<th>Status</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<%
						List<Student> studentList = (List<Student>) request.getAttribute("studentList");
						if (studentList != null && !studentList.isEmpty()) {
							for (Student student : studentList) {
						%>
						<td><%=student.getFirstName()%></td>
						<td><%=student.getLastName()%></td>
						<td><%=student.getGender()%></td>
						<td><%=student.getDob()%></td>
						<td><strong><%=student.getMobileNumber()%></strong></td>
						<td><%=student.getEmailId()%></td>
						<td><%=student.getStatus()%></td>
						<td><a
							href="Edit?action=accept&email=<%=student.getEmailId()%>"
							class="button edit" id="acceptButton">Accept</a> <a
							href="Edit?action=reject&email=<%=student.getEmailId()%>"
							class="button delete" id="rejectButton">Reject</a></td>
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
				</tbody>
			</table>
		</section>
	</main>
	<script>
    document.getElementById('acceptButton').addEventListener('click', function() {
        // Disable the reject button
        document.getElementById('rejectButton').disabled = true;

        // Get the value and store it in student status (you'll need a way to fetch the status)
        <%
        
        if (studentList != null && !studentList.isEmpty()) {
	for (Student e : studentList) {
	
	%>
        const status = '<%=e.getStatus()%>';		
	<%}
}%>
		// Assuming you want to update the status in a <td> element with the id 'statusCell'
							document.getElementById('statusCell').textContent = status;
						});
	</script>

</body>
</html>