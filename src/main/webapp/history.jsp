<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>

<%@page import=" com.fssa.collage.admission.app.service.StudentService"%>
<%@page import=" com.fssa.collage.admission.app.model.Student"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="./assets/css/profile.css">
</head>
<body>
	<!-- This is profile-section -->
	<div class="account-section">
		<div class="side-item">
			<div class="page">
				<img class="pro_image"
					src="../../assets/New_collection/Acc-cover.png" alt="profile">
				<label for="upload-file"><i class="fa-solid fa-camera"
					style="color: #A322EE;"></i></label> <input type="file"
					accept="image/jpeg,image/png,image/jpg" id="upload-file">
			</div>
			<div class="side-menu">
				<ul>
					<li><a href="./profile.jsp" class="active" id="profile1"><span
							class="fa-solid fa-circle-user"></span> <span>My Profile</span></a></li>
					<li><a href="./historyServlet" autofocus class="active"
						id="appointment1"><span class="fa-solid fa-calendar-check"></span>
							<span>Applications</span></a></li>
					<li><a href="./home.jsp" class="active"><span
							class="fa-solid fa-left-long"></span> <span>back to home</span></a></li>
					<li><a href="./LogOutServlet" id="log" class="active"><span
							class="fa-solid fa-right-from-bracket"></span> <span id="log">Logout</span></a></li>
		
				</ul>
			</div>
		</div>
		<div class="main-item">
			<main>
				<!-- This is user condainer -->
				<div class="display_cls" id="profile_page">
					<div class="booking_appoinment">
						<h1 class="heading">Your Applications</h1>

						<div class="upcoming">
							<table>
								<thead>
									<tr>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Gender</th>
										<th>Date Of Birth</th>
										<th>Mobile Number</th>
										<th>Email</th>
										<th>Department</th>
										<th>Status</th>
										<th>Actions</th>
									</tr>
								</thead>
								<%
								String email = (String) session.getAttribute("LoggedStudent");
								List<Student> studentList = StudentService.getStudentApplicationById(email);
								System.out.println(studentList);
								if (studentList != null && !studentList.isEmpty()) {
									for (Student student : studentList) {
								%>
								<tbody class="table_row">
									<td><%=student.getFirstName()%></td>
									<td><%=student.getLastName()%></td>
									<td><%=student.getGender()%></td>
									<td><%=student.getDob()%></td>
									<td><strong><%=student.getMobileNumber()%></strong></td>
									<td><%=student.getEmailId()%></td>
									<td><%=student.getDepartment()%></td>
									<%
									if ("pending".equals(student.getStatus())) {
									%>
									<td class="status"><%=student.getStatus()%></td>
									<%
									} else {
									%>
									<td class="status"><%=student.getStatus()%>ed</td>
									<%
									}
									%>
									<%
									if (!"Cancel".equals(student.getStatus()) && !"Reject".equals(student.getStatus())) {
									%>
									<td><button>
											<a href="Edit?action=cancel&id=<%=student.getId()%>"
												class="button edit" id="cancelBtn">Cancel</a>
										</button></td>
									<%
									} else {
									%>
									<td><button disabled class="cancel">
											Cancel
										</button></td>
									<%
									}
									%>

								</tbody>
								<%
								}
								} else {
								%>
								<h1>No records found</h1>
								<%
								}
								%>
							</table>
						</div>

					</div>
				</div>
			</main>
		</div>
	</div>

	<style>
/* Style for the table */
table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

td {
	color: grey;
}

th {
	background-color: #f2f2f2;
}

/* Style for the "Cancel" button */
.button.edit {
	background-color: red;
	color: white;
	padding: 5px 10px;
	text-decoration: none;
	border-radius: 5px;
}

button.cancel {
	background-color: pink;
	color: white;
	padding: 5px 10px;
	text-decoration: none;
	border-radius: 5px;
}

.button.edit:hover {
	background-color: darkred;
}

/* Style for the "No records found" message */
h1 {
	color: black;
	margin: 20px;
}
</style>

</body>
</html>








