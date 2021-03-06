package com.oe.controll.user;

import java.io.IOException;
import java.util.List;

import javax.enterprise.inject.New;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.oe.dao.DaoUser;
import com.oe.dao.DaoVideo;
import com.oe.entity.User;
import com.oe.entity.Video;

@WebServlet({"/oe/dangnhap","/oe/login","/oe/dangxuat"})
public class dangnhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = request.getRequestURI();
		List<User> list =null;
		User user = new User();
		if(uri.contains("/oe/dangxuat")) {
			user = null;
			request.getSession().setAttribute("user", user);
			request.setAttribute("video", list);
			request.setAttribute("trangchu", "lu");
			request.setAttribute("uri", "../nguoidung/TrangChu.jsp");
			request.getRequestDispatcher("/oe/trangchu").forward(request, response);
		} else
		request.getRequestDispatcher("/views/Html/user/DangNhap.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DaoUser daoUser = new DaoUser();
		Video video = new Video();
		DaoVideo daoVideo = new DaoVideo();
		String uri = request.getRequestURI();
		User user = new User();
		try {
			BeanUtils.populate(user, request.getParameterMap());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if(uri.contains("oe/login")) {
			try {
				User tk = daoUser.checkLogin(user.getId(), user.getPasswordd());
				if( (tk.getId().equals(user.getId()) ) && (tk.getPasswordd().equals(user.getPasswordd())) ) {
					
					request.getSession().setAttribute("user", tk);
					List<Video> list = daoVideo.findByAll();
					
					request.setAttribute("video", list);
					request.setAttribute("trangchu", "lu");
					request.setAttribute("uri", "../nguoidung/TrangChu.jsp");
					request.getRequestDispatcher("/oe/trangchu").forward(request, response);
				} else {
					request.getRequestDispatcher("/oe/trangchu").forward(request, response);
				}
				
			} catch (Exception e) {
				request.setAttribute("mess", "Sai T??n ho???c m???t kh???u");
				request.getRequestDispatcher("/views/Html/user/DangNhap.jsp").forward(request, response);
			}
		}else {
			request.getRequestDispatcher("/oe/trangchu").forward(request, response);
		}
		
	}
	
}
