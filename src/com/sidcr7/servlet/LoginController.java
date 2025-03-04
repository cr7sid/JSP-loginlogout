package com.sidcr7.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class LoginController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doPost(HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      String un = request.getParameter("uname");
      String pwd = request.getParameter("pass");
      if (un.equals("candidjava")) {
         out.print("Welcome, " + un);
         HttpSession session = request.getSession(true); // reuse existing
                                             // session if exist
                                             // or create one
         session.setAttribute("user", un);
         session.setMaxInactiveInterval(30); // 30 seconds
         response.sendRedirect("home.jsp");
      } else {
    	  String message = "Wrong credentials! Login Failed!!!";
    	  request.setAttribute("message", message);
         RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
         rd.include(request, response);
      } // TODO Auto-generated method stub
   }
}