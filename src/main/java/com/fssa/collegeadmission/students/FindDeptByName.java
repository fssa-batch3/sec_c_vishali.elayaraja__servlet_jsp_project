package com.fssa.collegeadmission.students;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.collage.admission.app.model.Department;
import com.fssa.collage.admission.app.service.DepartmentService;

/**
 * Servlet implementation class FindDeptByName
 */
@WebServlet("/FindDeptByName")
public class FindDeptByName extends HttpServlet {
	private static final long serialVersionUID = 1L;
      	
		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			String search = request.getParameter("search");

			DepartmentService departmentService = new DepartmentService();

			try {

				List<Department> student = departmentService.findDepartmentByName(search);
				request.setAttribute("findStudent", student);
			} catch (Exception e) {
				e.printStackTrace();
	            response.getWriter().write("An error occurred: " + e.getMessage());
			}
	        RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
	        dispatcher.forward(request, response);

		}

	}

}
