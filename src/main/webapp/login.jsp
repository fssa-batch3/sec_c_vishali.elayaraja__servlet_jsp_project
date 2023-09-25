<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./login.css">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

		<%
		String errorMsg = (String) request.getParameter("error");
		if (errorMsg != null) {
		%>
		<p class="errormsg"
			style="position: relative; left: 165px; top: -30px; color: red; font-weight: bold;"><%=errorMsg%></p>
		<%
		}
		%>

		<%
		String errorMsg2 = (String) request.getParameter("error2");
		if (errorMsg2 != null) {
		%>
		<p class="errormsg2"
			style="position: relative; left: 200px; top: 80px; color: red; font-weight: bold;"><%=errorMsg2%></p>
		<%
		}
		%>
		
	<img class="wave" src="https://i.ibb.co/MGj24Qd/wave-haikei.png"
		alt="wave-haikei">
	<div class="container">
		<div class="img">
			<img src="https://i.ibb.co/nsKFdYm/loginpg-img-removebg-preview.png"
				alt="loginpg-img-removebg-preview">
		</div>
		<div class="login-content">
			<form action="LoginServlet" method="post">
				<img src="https://i.ibb.co/bLc60w3/profile-10441736.png"
					alt="profile-10441736">
				<h2 class="title">Welcome</h2>
				<div class="input-div one">
					<div class="i">
						<i class="fas fa-user"></i>
					</div>
					<div class="div">
						<h5>Email</h5>
						<input type="email" class="input" name="email" id="email">
					</div>
				</div>
				<div class="input-div pass">
					<div class="i">
						<i class="fas fa-lock"></i>
					</div>
					<div class="div">
						<h5>Password</h5>
						<input type="password" class="input" name="password" id="password">
					</div>
				</div>
				<span class="Signup-btn">No account?</span> <a
					href="./registration.jsp">Sign up</a> <input type="submit"
					class="btn" value="Login">
			</form>

		</div>
	</div>

	<script src="vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="./login.js"></script>

</body>
</html>