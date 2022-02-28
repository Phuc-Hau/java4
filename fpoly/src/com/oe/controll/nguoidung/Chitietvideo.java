package com.oe.controll.nguoidung;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oe.dao.DaoVideo;
import com.oe.entity.Video;


@WebServlet("/oe/chitietvideo/*")
public class Chitietvideo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DaoVideo daoVideo = new DaoVideo();
	Video video = new Video();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  url = request.getRequestURI();
		String id =url.replace("/fpoly/oe/chitietvideo/", "");
		video = daoVideo.findByID(id);
		request.setAttribute("video", video);
		request.getRequestDispatcher("/views/Html/nguoidung/ChiTietVideo.jsp").forward(request, response);
	}

}
