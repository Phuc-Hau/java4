package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/home/Lab1-B5","/home/Lab1_Bai5/result"})
public class Lab1_B5 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
		req.getRequestDispatcher("/views/Lab1_Bai5/form.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
		String name = req.getParameter("fullname");
		req.setAttribute("message", "Xin chào "+name);
		req.getRequestDispatcher("/views/Lab1_Bai5/result.jsp").forward(req, resp);
	}
}
