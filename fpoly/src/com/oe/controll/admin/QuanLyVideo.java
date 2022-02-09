package com.oe.controll.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oe.dao.DaoVideo;
import com.oe.entity.Video;


@WebServlet("/oe/QuanLyvideo")
public class QuanLyVideo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Video video = new Video();
	DaoVideo daoVideo = new DaoVideo();
	List<Video> list =null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		list = daoVideo.findByAll();
		request.setAttribute("listvideo", list);
		request.getRequestDispatcher("/views/Html/admin/QuanLyVideo.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
