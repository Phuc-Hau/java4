package com.oe.controll.admin.edit;

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

@WebServlet({"/Editvideo","/oe/video/edits/*"})
public class Editvideo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DaoVideo daoVideo = new DaoVideo();
	Video video = new Video();
	List<Video> list =null;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  url = request.getRequestURI();
		try {
			BeanUtils.populate(video, request.getParameterMap());
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if(url.contains("/oe/video/edits/create")) {
				daoVideo.create(video);
			} else if(url.contains("/oe/video/edits/update")) {
				daoVideo.update(video);
			} else if(url.contains("/oe/video/edits/delete")) {
				daoVideo.delete(video.getId());
			} else {
				System.out.println("reset");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}	
		request.setAttribute("showedit", "show active");
		request.setAttribute("edittrue", false);
		request.setAttribute("activeedit", "active");
		request.setAttribute("readonly", "readonly");
		request.setAttribute("videoedit", video);
		list = daoVideo.findByAll();
		request.setAttribute("listvideo", list);
		request.getRequestDispatcher("/views/Html/admin/QuanLyVideo.jsp").forward(request, response);
	}

}
