package com.oe.controll.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.oe.dao.DaoUser;
import com.oe.entity.User;

@WebServlet({"/admin/QLnhanvien","/admin/user/edit/*","/admin/user/delete/*"})
public class QuanLyNhanVien extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoUser daoUser = new DaoUser();
		List<User> list = null;
		list = daoUser.findByAll();
		request.setAttribute("listuser", list);
		request.getRequestDispatcher("/views/Html/admin/QuanLyNhanVien.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoUser daoUser = new DaoUser();
		User user = new User(); 
		List<User> list = null;
		String  url = request.getRequestURI();
		if(url.contains("/admin/user/edit")) {
			String id =url.replace("/fpoly/admin/user/edit/", "");
			try {
				user = daoUser.findByID(id);
				request.setAttribute("useredit", user);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(url.contains("/admin/user/delete")) {
			String id =url.replace("/fpoly/oe/user/delete/", "");
			try {
				daoUser.delete(id);
				request.setAttribute("listuser","user");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		list = daoUser.findByAll();
		request.setAttribute("listuser", list);
		request.getRequestDispatcher("/views/Html/admin/QuanLyNhanVien.jsp").forward(request, response);
	}

}
