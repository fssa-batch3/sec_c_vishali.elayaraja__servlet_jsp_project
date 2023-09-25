package com.fssa.collegeadmission.students;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.collage.admission.app.exception.DAOException;
import com.fssa.collage.admission.app.exception.InvalidStudentException;
import com.fssa.collage.admission.app.model.Student;
import com.fssa.collage.admission.app.service.StudentService;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		response.getWriter().append("Success");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("user-firstname");
		String lastName = request.getParameter("user-lastname");
		String email = request.getParameter("user-email");
		String phoneNumber = request.getParameter("user-number");

		long mobileNumber = Long.parseLong(phoneNumber);
		StudentService studentService = new StudentService();
		Student student = new Student();
		student.setEmailId(email);
		student.setFirstName(firstName);
		student.setLastName(lastName);
		student.setMobileNumber(mobileNumber);
		try {
			studentService.updateStudent(student);
		} catch (InvalidStudentException | DAOException e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/profile.jsp");
	}

}
