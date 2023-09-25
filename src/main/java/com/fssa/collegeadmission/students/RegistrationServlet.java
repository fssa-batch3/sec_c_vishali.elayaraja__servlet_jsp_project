package com.fssa.collegeadmission.students;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.collage.admission.app.exception.DAOException;
import com.fssa.collage.admission.app.exception.InvalidStudentException;
import com.fssa.collage.admission.app.model.Student;
import com.fssa.collage.admission.app.service.StudentService;
import com.fssa.collage.admission.app.util.Logger;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Handles the HTTP POST request for adding a new student.
	 *
	 * @param request  The HttpServletRequest containing student data.
	 * @param response The HttpServletResponse for sending the response.
	 * @throws ServletException If the servlet encounters a servlet-specific
	 *                          problem.
	 * @throws IOException      If an I/O error occurs while handling the request.
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	
		try {
			// Collect student data from request parameters
			long mobileNumber = Long.parseLong(request.getParameter("mobileNumber"));
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String gender = request.getParameter("gender");
			String dobString = request.getParameter("dob"); // Assuming the date format is yyyy-MM-dd
			String emailId = request.getParameter("email");
			String password = request.getParameter("password");
			String confirmPassword = request.getParameter("confirmpass");
		
			
		
			if (!password.equals(confirmPassword)) {
				Logger.info("Password and confirm password doesn't match");
				RequestDispatcher rd = request.getRequestDispatcher("./registration.jsp");
				rd.forward(request, response);
			} 

			// Parse dob from String to LocalDate
			LocalDate dob = LocalDate.parse(dobString);



			// Create a Student object
			StudentService studentService = new StudentService();
			Student student = new Student();
			student.setFirstName(firstName);
			student.setLastName(lastName);
			student.setGender(gender);
			student.setDob(dob);
			student.setEmailId(emailId);
			student.setPassword(password);
			student.setMobileNumber(mobileNumber);
			PrintWriter out = response.getWriter();
			// Call the addStudent method to add the student to the Service layer
			boolean success = StudentService.studentRegisteration(student);

			if (success) {
				out.println("Successfully Created an account");
			} else {
				out.println("Failed to Create an account.");
			}
		}	catch (DAOException | SQLException |InvalidStudentException e) {
				e.printStackTrace();
				request.setAttribute("ErrorMessage", e.getMessage());
				RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/registration.jsp");
				dispatcher.forward(request, response);
				
				
	}

}
}
