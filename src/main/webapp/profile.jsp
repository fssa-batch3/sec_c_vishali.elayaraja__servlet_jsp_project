<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import=" com.fssa.collage.admission.app.service.StudentService"%>
<%@page import=" com.fssa.collage.admission.app.model.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="./profile.css">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<!-- This is profile-section -->
	<div class="account-section">
		<div class="side-item">
			<div class="page">
				<img class="pro_image"
					src="../../assets/New_collection/Acc-cover.png" alt="profile">
				<label for="upload-file"><i class="fa-solid fa-camera"
					style="color: #a322ee;"></i></label> <input type="file"
					accept="image/jpeg,image/png,image/jpg" id="upload-file">
			</div>
			<div class="side-menu">
				<ul>
					<li><a href="#profile_page" class="active" id="profile1"
						autofocus><span class="fa-solid fa-circle-user"></span> <span>My
								Profile</span></a></li>
					<li><a href="./history.jsp" class="active" id="order_history1"><span
							class="fa-solid fa-bag-shopping"></span> <span>History</span></a></li>

					<li><a href="./LogOutServlet" id="log" class="active"><span
							class="fa-solid fa-right-from-bracket"></span> <span id="log">Logout</span></a>
					</li>
					<li><a href="./home.jsp" class="active"><span
							class="fa-solid fa-left-long"></span> <span>Exit</span></a></li>

				</ul>
			</div>
		</div>
		<div class="main-item">
			<main>

				<%
				String user = (String) session.getAttribute("LoggedStudent");
				Student student = StudentService.findStudentByEmail(user);
				%>
				<!-- This is user condainer -->
				<div class="display_cls" id="profile_page">
					<div class="information">
						<div class="information-username">
							<h1>
								Hello <span><%=student.getFirstName()%></span>
							</h1>
						</div>
						<form action="UpdateServlet" method="post" id="form">
							<!-- This is First name  -->
							<div class="first-name" id="align-num">
								<label class="more" for="user-firstname">First Name</label> <input
									class="name" id="user-firstname" type="text"
									pattern=^[a-zA-Z]{3,20}$
									title="the input field  should contains only alphabetic characters (both upper and lower case) and has a length between 3 and 20 characters."
									name="user-firstname" placeholder="First Name"
									value="<%=student.getFirstName()%>" required="true" readonly>
							</div>
							<!-- This is Last name  -->
							<div class="last-name" id="align-num">
								<label class="more" for="user-lastname">Last Name</label> <input
									class="name" id="user-lastname" type="text"
									name="user-lastname" pattern=^[a-zA-Z]{3,20}$
									title="the input field  should contains only alphabetic characters (both upper and lower case) and has a length between 3 and 20 characters."
									placeholder="Last Name" value="<%=student.getLastName()%>"
									required="true" readonly>

							</div>
							<!-- This is email input  -->
							<div class="email" id="align-num">
								<label class="more" for="user-email"> Email</label> <input
									class="name" id="user-email" type="email" name="user-email"
									placeholder="name@gmail.com" value="<%=student.getEmailId()%>"
									required="true" title="First name connot contain spaces"
									readonly>

							</div>
							<!-- This is user mobile number -->
							<div class="number" id="align-num">
								<label class="more" for="user-number"> Number</label> <input
									class="name" id="user-number" type="text" pattern="[0-9]{10}"
									title="PLease enter 10 digit number"
									value="<%=student.getMobileNumber()%>" name="user-number"
									placeholder="+91 8923456789" required="true" readonly>
							</div>
							<!-- This is update button -->
							<div class="exit"></div>
							<button type="submit" id="save-btn" class="name">Save</button>
						</form>
						<form action="DeleteServlet?email=<%=student.getEmailId()%>"
							method="post">
							<button type="submit" id="delete-btn" class="name">delete</button>
						</form>
						<button id="edit-btn" class="name">Edit</button>
					</div>
				</div>
			</main>

		</div>
	</div>
	<!-- <script src="../../Page/JS files/profile-page.js"></script> -->

	<script type="text/javascript">
		let firstName = document.getElementById("user-firstname");
		let lastName = document.getElementById("user-lastname");
		let phoneNumber = document.getElementById("user-number");
		let edit_btn = document.getElementById("edit-btn");
		let save_btn = document.getElementById("save-btn");

		edit_btn.addEventListener("click", function() {

			firstName.removeAttribute("readonly");
			lastName.removeAttribute("readonly");
			phoneNumber.removeAttribute("readonly");

		})

		save_btn.addEventListener("click", function() {

			firstName.setAttribute("readonly", "");
			lastName.setAttribute("readonly", "");
			phoneNumber.setAttribute("readonly", "");

		})
	</script>
</body>

</html>