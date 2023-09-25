package com.fssa.collegeadmission.students;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
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

/**
 * Servlet implementation class ApplicationHistoryServlet
 */
@WebServlet("/ApplicationHistoryServlet")
public class ApplicationHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicationHistoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		StudentService ss = new StudentService();

		HttpSession session = request.getSession(false);
		Student login = (Student)session.getAttribute("LoggedStudent");
		int id=login.getId();
		try {
			Student studentlist = ss.findStudentById(id);
			request.setAttribute("applicationhistoryByUserId", studentlist);
			
		} catch (DAOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}catch (InvalidStudentException e) {
			
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/OrderHistory.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}







