package com.fssa.collegeadmission.students;
import java.lang.CharSequence;
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

/**
 * Servlet implementation class ApplyNowServlet
 */
@WebServlet("/ApplyNowServlet")
public class ApplyNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		System.out.println(firstName);
		String lastName = request.getParameter("lastName");
		System.out.println(lastName);
		String gender = request.getParameter("gender");
		System.out.println(gender);
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		System.out.println(dob);
		String email = request.getParameter("email");
		System.out.println(email);
		String department = request.getParameter("department");
		System.out.println(department);
		long mobileNumber = Long.parseLong(request.getParameter("mobileNumber"));
		System.out.println(mobileNumber);
		Student student = new Student();
		student.setDob(dob);
		student.setEmailId(email);
		student.setFirstName(firstName);
		System.out.println(gender);
		student.setGender(gender);
		student.setLastName(lastName);
		student.setMobileNumber(mobileNumber);
		
		PrintWriter out = response.getWriter();
		
		try {
			
			 StudentService.addStudent(student, department);
			 out.println("Success");
//			 out.flush();
//			 out.close();
			 response.sendRedirect("./history.jsp");
			 
			 
		} catch (InvalidStudentException | SQLException | DAOException e) {
			e.printStackTrace();
			request.setAttribute("ErrorMessage", "Already Exists");
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/applynow.jsp");
			dispatcher.forward(request, response);
		}
	}

}
