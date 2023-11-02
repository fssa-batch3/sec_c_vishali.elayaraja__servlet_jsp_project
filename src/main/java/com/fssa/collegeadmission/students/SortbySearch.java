package com.fssa.collegeadmission.students;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SortbySearch
 */@WebServlet("/servlett")
 public class SortbySearch extends HttpServlet 
 {
      int i;
     Connection con;
     PreparedStatement pst;
     ResultSet rs;
     @Override
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
             throws ServletException, IOException
     {
         try {
             i++;
             PrintWriter out = response.getWriter();
             response.setContentType("text/html");
             String name= request.getParameter("dept_name");

             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost/collage_management_app","root","123456");
             pst = con.prepareStatement("SELECT student_class.id,students.first_name,students.last_name,students.gender,students.dob,students.mobile_no,students.email,departments.dept_name,student_class.status\r\n"
             		+ "FROM students\r\n"
             		+ "JOIN student_class \r\n"
             		+ "ON students.id = student_class.student_id\r\n"
             		+ "join departments\r\n"
             		+ "on student_class.department_id = departments.id \r\n"
             		+ "where students.status = 1 and departments.dept_name = ?");
             pst.setString(1, name);
             rs = pst.executeQuery();
              
              out.println("<table width=60% border= 1   >");
              out.println("<tr><td colspan=4 " );
              out.println("<center><h2>Result of Search Page</h2></center>");	
              out.println("</td></tr>");
              out.println("<tr>");
              out.println("<th>First Name</th>");
              out.println("<th>Last Name</th>");
              out.println("<th>Gender</th>");
              out.println("<th>Date Of Birth</th>");
              out.println("<th>Mobile Number</th>");
              out.println("<th>Email</th>");
              out.println("<th>Gender</th>");
              out.println("<th>Department</th>");
              out.println("<th>Status</th>");
              out.println("<th>Actions</th>");
              out.println("</tr>");
             
               while(rs.next())
               {
                   out.println("<tr>");
                   out.println("<td>" + rs.getString("fname") + "</td> ");
                   out.println("<td>" + rs.getString("lname") + "</td> ");
                   out.println("<td>" + rs.getString("email") + "</td> ");
                   out.println("<td>" + rs.getString(" number") + "</td> ");
                   out.println("<td>" + rs.getString("empid") + "</td> ");
                   out.println("<td>" + rs.getString("fname") + "</td> ");
                   out.println("<td>" + rs.getString("title") + "</td> ");
                   out.println("<td>" + rs.getString("address") + "</td> ");
                   out.println("</tr>");

                   
               }
               out.println("</table>");
         
                } 
             catch (ClassNotFoundException ex) {
            
         }catch (Exception e) 
         { throw new ServletException("error", e); }
     }
     
     public void destory()
     {
         i = 0;
     }

     
 }

