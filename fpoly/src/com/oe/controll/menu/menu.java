package com.oe.controll.menu;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oe.dao.DaoVideo;
import com.oe.entity.Video;
import com.oe.untils.Auth;


@WebServlet({"/oe/trangchu","/oe/phimnhatban","/oe/phimus&uk","/oe/phimhanquoc","/oe/uathich","/oe/phim"})
public class menu extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Video video = new Video();
	DaoVideo daoVideo = new DaoVideo();
	List<Video> list = null;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		list = daoVideo.findByAll();
		req.setAttribute("video", list);

		String uri = req.getRequestURI();
		if(uri.contains("/oe/phim")) {
			Auth.user=null;
		}
		if(uri.contains("/oe/uathich")) {
			list = daoVideo.findUaThich();
			req.setAttribute("video", list);
			req.setAttribute("uri", "../nguoidung/uathich.jsp");
			req.setAttribute("uathich", "lu");
		}else if(uri.contains("/oe/phimnhatban")) {
			
			req.setAttribute("uri", "../nguoidung/phimnhatban.jsp");
			req.setAttribute("phimnhatban", "lu");
		}else if(uri.contains("/oe/phimus&uk")) {
			
			req.setAttribute("uri", "../nguoidung/phimus&uk.jsp");
			req.setAttribute("phimusuk", "lu");
		}else if(uri.contains("/oe/phimhanquoc")) {
			
			req.setAttribute("uri", "../nguoidung/phimhanquoc.jsp");
			req.setAttribute("phimhanquoc", "lu");
		}else {
			req.setAttribute("uri", "../nguoidung/TrangChu.jsp");
			req.setAttribute("trangchu", "lu");
		}
		
		if(Auth.isLogin()) {
			req.setAttribute("auth", "<a class=\"dropdown-item\" href=\"../oe/forgetpass\">Quên Mật Khẩu</a>\r\n"
					+ " <a class=\"dropdown-item\" href=\"../oe/phim\">Đăng Xuất</a>");
		} else {
			
			req.setAttribute("auth", "<a class=\"dropdown-item\" href=\"../oe/d angnhap\">Đăng Nhập</a>\r\n"
					+ "                <a class=\"dropdown-item\" href=\"../oe/dangky\">Đăng Ký</a>\r\n"
					+ "               <a class=\"dropdown-item\" href=\"../oe/forgetpass\">Quên Mật Khẩu</a>");
		}
		
		req.getRequestDispatcher("/views/Html/nguoidung/index.jsp").forward(req, resp);
	}
}
