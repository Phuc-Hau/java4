package com.oe.controll.user;
 
import java.io.IOException;
import java.util.List;

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

@WebServlet("/oe/doipassid")
public class DoiPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DaoVideo daoVideo = new DaoVideo();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.getRequestDispatcher("/views/Html/user/Doipassword.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = new User();
		DaoUser daoUser = new DaoUser();
		String cf = request.getParameter("NewPassword");	
		String rs = request.getParameter("ConfirmPassword");
		try {
			BeanUtils.populate(user, request.getParameterMap());
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			user = daoUser.checkLogin(user.getId(), user.getPasswordd());
			if(cf.equals(rs)) {
				try {
					user.setPasswordd(cf);
					daoUser.update(user);
					request.getSession().setAttribute("user", user);
					
					List<Video> list = daoVideo.findByAll();
					
					request.setAttribute("video", list);
					request.setAttribute("trangchu", "lu");
					request.setAttribute("uri", "../nguoidung/TrangChu.jsp");
					request.getRequestDispatcher("/oe/trangchu").forward(request, response);
				} catch (Exception e) {			
					doGet(request, response);
				}
			}else {
				request.setAttribute("mess", "password mới không khớp");
				doGet(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("mess", "sai id hoặc password");
			doGet(request, response);
		}
		
	}
}
