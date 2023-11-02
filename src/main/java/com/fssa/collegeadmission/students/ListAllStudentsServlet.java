package com.fssa.collegeadmission.students;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fssa.collage.admission.app.model.Student;
import com.fssa.collage.admission.app.service.StudentService;

@WebServlet("/ViewStudentsServlet")
public class ListAllStudentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String DepartmentName = request.getParameter("department");

		try {
			// Call the getAllStudent method to retrieve the list of students
			List<Student> studentList =  StudentService.getAllStudent();
			if (DepartmentName != null) {
				studentList = StudentService.listAllStudentsByDepartment(DepartmentName);
			}

			// Set the studentList as an attribute in the request
			request.setAttribute("studentList", studentList);
			System.out.println(studentList);

			// Forward the request to a JSP for displaying the list
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().write("An error occurred: " + e.getMessage());
		}
	}
}
