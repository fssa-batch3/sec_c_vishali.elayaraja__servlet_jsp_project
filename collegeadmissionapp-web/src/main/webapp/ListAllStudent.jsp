<%@page import="com.fssa.collage.admission.app.service.StudentService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="com.fssa.collage.admission.app.model.*"%>

<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="css" href="/collegeadmissionapp-web/WEB-INF/addstudent.css">

<title>Student List</title>
</head>
<body>
    <div class="students">
        <%
        List<Student> studentList = (List<Student>) request.getAttribute("studentList");

        if (studentList != null && !studentList.isEmpty()) {
            for (Student student : studentList) {
        %>
        <div class="student-item">
            <p>Application No: <%= student.getApplicationNo() %></p>
            <p>First Name: <%= student.getFirstName() %></p>
            <p>Last Name: <%= student.getLastName() %></p>
            <p>Gender: <%= student.getGender() %></p>
            <p>Date of Birth: <%= student.getDob() %></p>
            <p>Email: <%= student.getEmailId() %></p>
            <p>Status: <%= student.getIsActive() ? "Active" : "Inactive" %></p>
            <a href="Edit?email=<%=student.getEmailId()%>">Update</a>
            <a href="DeleteServlet?id=<%=student.getId()%>">Delete</a>
        </div>
        <%
            }
        } else {
        %>
        <p>No students found.</p>
        <%
        }
        %>
    </div>
    
    
    
</body>
</html>
