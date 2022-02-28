package com.oe.controll.nguoidung;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oe.dao.DaoVideo;
import com.oe.entity.Video;


@WebServlet("/oe/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Video video = new Video();
		DaoVideo daoVideo = new DaoVideo();
		List<Video> list = daoVideo.findByAll();
		req.setAttribute("video", list);
		
		req.setAttribute("trangchu", "lu");
		req.setAttribute("uri", "../nguoidung/TrangChu.jsp");
		req.getRequestDispatcher("/views/Html/nguoidung/index.jsp").forward(req, resp);
	}

}
