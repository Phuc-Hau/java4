package com.oe.controll.nguoidung;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/oe/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("trangchu", "lu");
		request.setAttribute("uri", "../card/video.jsp");
		request.getRequestDispatcher("/views/Html/nguoidung/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("trangchu", "lu");
		request.setAttribute("uri", "../card/video.jsp");
		request.getRequestDispatcher("/views/Html/nguoidung/index.jsp").forward(request, response);
	}

}
