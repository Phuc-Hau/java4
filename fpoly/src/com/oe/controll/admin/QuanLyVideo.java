package com.oe.controll.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;

import com.oe.dao.DaoVideo;
import com.oe.entity.Video;


@WebServlet({"/admin/QuanLyvideo","/admin/video/edit/*"})
public class QuanLyVideo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	
	  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoVideo daoVideo = new DaoVideo();
		List<Video> list =null;
		list = daoVideo.findByAlls();
		request.setAttribute("listvideo", list);
		request.setAttribute("showlist", "show active");
		request.setAttribute("edittrue", true);
		request.setAttribute("activelist", "active");
		
		try {
			request.getRequestDispatcher("/views/Html/admin/QuanLyVideo.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoVideo daoVideo = new DaoVideo();
		Video video = new Video();
		List<Video> list =null;
		String  url = request.getRequestURI();

		if(url.contains("/admin/video/edit")) {
			String id =url.replace("/fpoly/admin/video/edit/", "");
			try {
				video = daoVideo.findByID(id);
				request.setAttribute("showedit", "show active");
				request.setAttribute("edittrue", false);
				request.setAttribute("activeedit", "active");
				request.setAttribute("readonly", "readonly");
				request.setAttribute("videoedit", video);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		list = daoVideo.findByAlls();
		request.setAttribute("listvideo", list);
		request.getRequestDispatcher("/views/Html/admin/QuanLyVideo.jsp").forward(request, response);
	}

}
