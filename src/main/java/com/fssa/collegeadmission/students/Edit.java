package com.fssa.collegeadmission.students;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.collage.admission.app.dao.StudentDAO;
import com.fssa.collage.admission.app.exception.DAOException;
import com.fssa.collage.admission.app.exception.InvalidStudentException;
import com.fssa.collage.admission.app.model.Student;
import com.fssa.collage.admission.app.service.StudentService;

/**
 * Servlet implementation class Edit
 */
@WebServlet("/Edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Edit() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String action = request.getParameter("action");
		StudentService ss = new StudentService();

		try {
			if ("accept".equals(action)) {

				ss.updatingStatusOfStudent(email, "Accept");
				response.sendRedirect("ViewStudentsServlet");
			} else {

				ss.updatingStatusOfStudent(email, "Reject");
				response.sendRedirect("ViewStudentsServlet");
			}
		} catch (InvalidStudentException | DAOException e) {
			e.printStackTrace();
		}

//		try {
////			Student stu = StudentDAO.findStudentByEmail(email);
//			
//			request.setAttribute("Student", stu);
//			RequestDispatcher rd = request.getRequestDispatcher("./Update.jsp");
//			rd.forward(request, response);
//			response.getWriter().append("Sucess");
//		} catch (DAOException | InvalidStudentException | SQLException e) {
//			response.getWriter().append(e.getMessage());
//			e.printStackTrace();
//		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
