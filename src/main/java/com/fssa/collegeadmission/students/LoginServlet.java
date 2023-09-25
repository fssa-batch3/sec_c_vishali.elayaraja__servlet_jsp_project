package com.fssa.collegeadmission.students;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.collage.admission.app.dao.StudentDAO;
import com.fssa.collage.admission.app.exception.DAOException;
import com.fssa.collage.admission.app.exception.InvalidStudentException;
import com.fssa.collage.admission.app.model.Student;
import com.fssa.collage.admission.app.service.StudentService;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		if (email.equals("admin@gmail.com") && password.equals("Admin@123")) {
			response.sendRedirect("./admin.jsp");
		} else {
			try {
				// Check if login is successful
				Student s = StudentService.findStudentByEmail(email);
				if (s.isActive() && StudentService.login(email, password)) {
					// If logged in, set session attribute and redirect to admin.jsp
					HttpSession session = request.getSession();
					session.setAttribute("LoggedStudent", email);
					response.sendRedirect("./home.jsp");
				} else {
					out.append("email or password is  invalid");
				}
			} catch (DAOException | InvalidStudentException | SQLException e) {
				out.append(e.getMessage());
			}
		}
	}

}


//protected void doPost(HttpServletRequest request, HttpServletResponse response)
//		throws ServletException, IOException {
//	
//	StudentService studentService = new StudentService();
//
//	String email = request.getParameter("email");
//	String password = request.getParameter("password");
//
//	PrintWriter out = response.getWriter();
//
//	Student users = new Student();
//	users.setEmailId(email);
//	users.setPassword(password);
//
//	try {
//
//		if (StudentService.login(email, password)) {
//			StudentDAO studentDao = new StudentDAO();
//			HttpSession session = request.getSession(true);
//			Student userss = StudentDAO.findStudentByEmail(users.getEmailId());
//	     	session.setAttribute("userss",userss);
//			session.setAttribute("email", email);
//			session.setAttribute("loggedInSuccess", true);
//			request.getRequestDispatcher("pages/home.jsp").forward(request, response);
//		}else {
//			StudentDAO studentDao = new StudentDAO();
//			
//			Student s = StudentService.findStudentByEmail(email);
//	        if (!StudentDAO.checkStudentExists(email) && s.isActive() ) {
//	        	
//	        	RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher ("/login.jsp?error=Invalid Email");
//	        	dispatcher.forward(request, response);
//	        } 
//			response.sendRedirect(request.getContextPath() + "/login.jsp?error2=Invalid Password");
//		}
//
//	} catch (DAOException | InvalidStudentException | SQLException e) {
//			e.printStackTrace();
//			
////		response.sendRedirect("/login.jsp?error=" + e.getMessage());
//		
//		// RequestDispatcher dispatcher =
//		// request.getRequestDispatcher(request.getContextPath() + "/pages/login.jsp");
//		// dispatcher.forward(request, response);
//		// e.printStackTrace();
//
//	}
//
//}
//
//}

