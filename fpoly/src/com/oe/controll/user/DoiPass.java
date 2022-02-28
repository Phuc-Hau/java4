package com.oe.controll.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.oe.dao.DaoUser;
import com.oe.entity.User;

@WebServlet("/oe/doipassid")
public class DoiPass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/Html/user/Doipassword.jsp").forward(request, response);
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
					request.getRequestDispatcher("/views/Html/user/DangNhap.jsp").forward(request, response);
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
