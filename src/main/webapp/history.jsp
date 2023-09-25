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
<link rel="stylesheet" href="./profile.css">
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
							<span>History</span></a></li>
					<li><a href="./LogoutServlet" id="log" class="active"><span
							class="fa-solid fa-right-from-bracket"></span> <span id="log">Logout</span></a></li>
					<li><a href="./home.jsp" class="active"><span
							class="fa-solid fa-left-long"></span> <span>Exit</span></a></li>
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
									<td><%=student.getStatus()%></td>
									<td><a
							href="Edit?action=cancel&id=<%=student.getId()%>"
							class="button edit" id="cancelBtn">Cancel</a></td>

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
</body>
</html>








