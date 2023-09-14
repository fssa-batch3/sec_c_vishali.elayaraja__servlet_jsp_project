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
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		long mobileNumber = Long.parseLong(request.getParameter("mobileNumber"));
		StudentService studentService = new StudentService();
		Student student = new Student();
		student.setDob(dob);
		student.setEmailId(email);
		student.setFirstName(firstName);
		student.setGender(gender);
		student.setLastName(lastName);
		student.setPassword(password);
		student.setMobileNumber(mobileNumber);
		try {
			studentService.updateStudent(student);
		} catch (InvalidStudentException | DAOException e) {
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
