package com.oe.controll.admin.edit;

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


@WebServlet({"/Edituser","/oe/user/edits/*"})
public class Edituser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DaoUser daoUser = new DaoUser();
	User user = new User();
	List<User> list = null;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  url = request.getRequestURI();
		try {
			BeanUtils.populate(user, request.getParameterMap());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
			if(url.contains("/oe/user/edits/create")) {
				try {
					daoUser.create(user);
					request.setAttribute("message","Thêm thành công");
				} catch (Exception e) {
					request.setAttribute("message","Thêm thất bại");
				}
				
			}
			
			else if(url.contains("/oe/user/edits/update")) {
				try {
					daoUser.update(user);
					request.setAttribute("message","Cập nhật thành công");
				} catch (Exception e) {
					request.setAttribute("message","Cập nhật thất bại");
				}
				
			}
			
			else if(url.contains("/oe/user/edits/delete")) {
				try {
					daoUser.delete(user.getId());
					request.setAttribute("message","Xóa thành công");
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}
		
			else
				System.out.println("reset");
			
		request.setAttribute("form",user);
		list = daoUser.findByAll();
		request.setAttribute("listuser", list);
		request.getRequestDispatcher("/views/Html/admin/QuanLyNhanVien.jsp").forward(request, response);
	}

}
