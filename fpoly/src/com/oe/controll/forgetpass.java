package com.oe.controll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class forgetpass
 */
@WebServlet({"/oe/account","/oe/confirmEmail","/oe/datpass","/oe/capcha"})
public class forgetpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/views/Html/forgetpass/timtk.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = request.getRequestURI();
		if(uri.contains("/oe/confirmEmail")) {
			request.getRequestDispatcher("/views/Html/forgetpass/capcha.jsp").forward(request, response);
		} else if(uri.contains("/oe/capcha")) {
			request.getRequestDispatcher("/views/Html/forgetpass/forgetpassword.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/views/Html/forgetpass/datpass.jsp").forward(request, response);
		}
		
	}

}
