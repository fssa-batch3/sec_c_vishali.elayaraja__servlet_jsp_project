package com.fssa.collegeadmission.students;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fssa.collage.admission.app.model.Student;
import com.fssa.collage.admission.app.service.StudentService;

@WebServlet("/AddStudentServlet1")
public class AddStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// Collect student data from request parameters
//			String applicationNo = request.getParameter("applicationNo");
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String gender = request.getParameter("gender");
			String dobString = request.getParameter("dob"); // Assuming the date format is yyyy-MM-dd
			String emailId = request.getParameter("email");
			String password = request.getParameter("password");
			long mobileNumber = Long.parseLong(request.getParameter("mobileNumber"));

			// Parse dob from String to LocalDate
			LocalDate dob = LocalDate.parse(dobString);

			// Create a Student object
			Student student = new Student();
//			student.setApplicationNo(applicationNo);
			student.setFirstName(firstName);
			student.setLastName(lastName);
			student.setGender(gender);
			student.setDob(dob);
			student.setEmailId(emailId);
			student.setPassword(password);
			student.setMobileNumber(mobileNumber);
			PrintWriter out = response.getWriter();
			// Call the addStudent method to add the student to the database
			boolean success = StudentService.addStudent(student, "CEO");

			if (success) {
				out.println("Student added successfully.");
			} else {
				out.println("Failed to add student.");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().write("An error occurred: " + e.getMessage());
		}
	}
}
