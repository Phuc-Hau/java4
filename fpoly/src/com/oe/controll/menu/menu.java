package com.oe.controll.menu;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"/oe/trangchu","/oe/phimnhatban","/oe/phimus&uk","/oe/phimhanquoc","/oe/uathich"})
public class menu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = request.getRequestURI();
		if(uri.contains("/oe/uathich")) {
			request.setAttribute("uri", "../nguoidung/uathich.jsp");
			request.setAttribute("uathich", "lu");
		}else if(uri.contains("/oe/phimnhatban")) {
			request.setAttribute("uri", "../nguoidung/phimnhatban.jsp");
			request.setAttribute("phimnhatban", "lu");
		}else if(uri.contains("/oe/phimus&uk")) {
			request.setAttribute("uri", "../nguoidung/phimus&uk.jsp");
			request.setAttribute("phimusuk", "lu");
		}else if(uri.contains("/oe/phimhanquoc")) {
			request.setAttribute("uri", "../nguoidung/phimhanquoc.jsp");
			request.setAttribute("phimhanquoc", "lu");
		}else {
			request.setAttribute("uri", "../card/video.jsp");
			request.setAttribute("trangchu", "lu");
		}

		request.getRequestDispatcher("/views/Html/nguoidung/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
