package com.oe.controll.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/oe/dangnhap","/oe/login","/oe/taotaikhoang"})
public class dangnhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/views/Html/user/DangNhap.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = request.getRequestURI();
		if(uri.contains("oe/taotaikhoang")) {
			request.getRequestDispatcher("/views/Html/user/DangKy.jsp").forward(request, response);
		} else if(uri.contains("oe/login")) {
			
		} else {
			request.getRequestDispatcher("/views/Html/nguoidung/index.jsp").forward(request, response);
		}
		
	}

}
