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


@WebServlet("/Logout")
public class LogoutController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doPost(HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      RequestDispatcher rd = request.getRequestDispatcher("logout.html");
      rd.include(request, response);
      HttpSession session = request.getSession(false);
      // session.setAttribute("user", null);
      session.removeAttribute("userr");
      session.getMaxInactiveInterval();
   }
}