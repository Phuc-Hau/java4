package com.oe.controll.admin.edit;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import com.oe.dao.DaoVideo;
import com.oe.entity.Video;


 
@MultipartConfig
@WebServlet({"/admin/video/edits/*","/admin/delete/*"})
public class Editvideo extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Video video = new Video();
		String  url = request.getRequestURI();

		DaoVideo daoVideo = new DaoVideo();
		List<Video> list =null;
		
		int views=0;
		
		request.setAttribute("showedit", "show active");
		request.setAttribute("edittrue", false);
		request.setAttribute("activeedit", "active");
		request.setAttribute("videoedit", video);
		request.setAttribute("readonly", "readonly");
		try {
			if(!url.contains("/admin/video/edits/create")){
				video  = daoVideo.findByID(request.getParameter("id"));
				views = video.getViews();
			}
			BeanUtils.populate(video, request.getParameterMap());
			System.out.println(video.getPoster());
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		File  dir =new File(request.getServletContext().getRealPath("/file"));
		if(!dir.exists()) {
			dir.mkdirs();
		}	
		if(!url.contains("/admin/video/edits/reset")) {
			try {
				Part photo =request.getPart("posters");
				File photoFile = new File(dir,photo.getSubmittedFileName());
				photo.write(photoFile.getAbsolutePath());
				video.setPoster(photoFile.getName());
			} catch (Exception e) {
				video.setPoster(request.getParameter("poster"));
			}
		}
		if(url.contains("/admin/video/edits/create")) {
			try {
				video.setViews(0);
				daoVideo.create(video);
				request.setAttribute("mess", "Th??m th??nh c??ng");
			} catch (Exception e) {
				request.setAttribute("mess", "Th??m th???t b???i");
				e.printStackTrace();
			}
		} else if(url.contains("/admin/video/edits/update")) {
			video.setViews(views);
			try {
				daoVideo.update(video);
				request.setAttribute("mess", "C???p nh???t th??nh c??ng");
			} catch (Exception e) {
				request.setAttribute("mess", "C???p nh???t th???t b???i");
				e.printStackTrace();
			}
		} else if(url.contains("/admin/video/edits/delete")) {
			try {
				daoVideo.delete(video.getId());
				request.setAttribute("mess", "X??a th??nh c??ng");
				request.setAttribute("readonly", "");
				video = new Video();
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("mess", "X??a th???t b???i");
			}
		}else if(url.contains("/admin/delete/")) {
			try {
				daoVideo.delete(request.getParameter("oid"));
				request.setAttribute("mess", "X??a th??nh c??ng");
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("mess", "X??a th???t b???i");
			}
		}else {
			request.setAttribute("readonly", "");
			video = new Video();
		}

		
		
		list = daoVideo.findByAll();
		request.setAttribute("listvideo", list);
		request.getRequestDispatcher("/views/Html/admin/QuanLyVideo.jsp").forward(request, response);
	}

}
