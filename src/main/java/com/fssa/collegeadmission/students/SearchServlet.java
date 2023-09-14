package com.fssa.collegeadmission.students;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.collage.admission.app.model.Student;
import com.fssa.collage.admission.app.service.StudentService;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String search = request.getParameter("search");

		StudentService studenttservice = new StudentService();
		Student stu = new Student();
		String firstname = stu.getFirstName();

		try {

			List<Student> student = studenttservice.findStudentByName(firstname, search);
			request.setAttribute("studentList", student);
		} catch (Exception e) {
			e.printStackTrace();
		}

		request.getRequestDispatcher("./ListAllStudent.jsp").forward(request, response);

	}

}
