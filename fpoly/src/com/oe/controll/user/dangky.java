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


@WebServlet("/oe/dangky")

public class dangky extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/views/Html/user/DangKy.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		DaoUser dao = new DaoUser();
		
		try {
			BeanUtils.populate(user, request.getParameterMap());
			dao.create(user);
			request.setAttribute("id", user.getId());
			request.getRequestDispatcher("/views/Html/user/DangNhap.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("erro","");
			e.printStackTrace();
			
		}
	}

}
