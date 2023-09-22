package com.fssa.collegeadmission.students;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.collage.admission.app.exception.DAOException;
import com.fssa.collage.admission.app.exception.InvalidStudentException;
import com.fssa.collage.admission.app.model.Student;
import com.fssa.collage.admission.app.service.StudentService;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		if (email.equals("admin@gmail.com") && password.equals("Admin@123")) {
			response.sendRedirect("./admin.jsp");
		} else {
		try {
			// Check if login is successful
			Student loggedIn = StudentService.findStudentByEmail(email);

			if (loggedIn == null || loggedIn.getPassword() == null) {
				out.append("email is not valid");
			} else if (loggedIn.getPassword().equals(password)) {
				// If logged in, set session attribute and redirect to admin.jsp
				HttpSession session = request.getSession();
				session.setAttribute("LoggedStudent", email);
				response.sendRedirect("./home.jsp");
			} else {
				out.append("password is incorrect");
			}
		} catch (DAOException | InvalidStudentException | SQLException e) {
			out.append(e.getMessage());
		}
	}
	}
}
