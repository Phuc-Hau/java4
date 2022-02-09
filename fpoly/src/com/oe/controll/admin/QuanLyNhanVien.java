package com.oe.controll.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oe.dao.DaoUser;
import com.oe.entity.User;

@WebServlet("/oe/nhanvien")
public class QuanLyNhanVien extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DaoUser daoUser = new DaoUser();
	User user = new User();
	List<User> list = null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		list = daoUser.findByAll();
		request.setAttribute("listuser", list);
		request.getRequestDispatcher("/views/Html/admin/QuanLyNhanVien.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
