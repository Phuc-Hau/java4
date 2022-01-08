package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/home/index")
public class HomeServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req , HttpServletResponse resq) throws ServletException , IOException{
		req.setAttribute("a","Xin chào Servlet");
		req.getRequestDispatcher("/views/index.jsp").forward(req, resq);
	}
}
