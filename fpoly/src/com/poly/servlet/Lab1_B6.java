package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/home/Lab1_B6","/home/Lab1_Bai6/result"})
public class Lab1_B6 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/views/Lab1_Bai6/form.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		int dai = Integer.parseInt(req.getParameter("a"));
		int rong = Integer.parseInt(req.getParameter("b"));
		int chuvi = (dai+rong)*2;
		int dientich = dai*rong;
		req.setAttribute("chuvi","Chu vi : "+chuvi);
		req.setAttribute("dientich","Diện tích : "+dientich);
		req.getRequestDispatcher("/views/Lab1_Bai6/result.jsp").forward(req, resp);
	}
}
