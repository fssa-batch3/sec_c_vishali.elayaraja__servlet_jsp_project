<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.collage.admission.app.model.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Student> arr = (List<Student>) request.getAttribute("STUDENT_LIST");
	if (arr != null) {
		for (Student e : arr) {
	%>
	<h1><%=e.getApplicationNo()%></h1>
	<%
	}
	} else {
	%>

	<h1>empty</h1>
	<%
	}
	%>
</body>
</html>