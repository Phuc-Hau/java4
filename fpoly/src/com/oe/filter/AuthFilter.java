 package com.oe.filter;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oe.entity.*;

@WebFilter(filterName = "/AuthFilter",urlPatterns = {"/admin/*"})
public class AuthFilter  implements com.oe.filter.HttpFilter{

	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("AuthFilter");
		String uri = req.getRequestURI();
		User user = (User) req.getSession().getAttribute("user");
		String error ="";

		if(user == null) {
			System.out.println("tren");
			req.getRequestDispatcher("/views/Html/user/DangNhap.jsp").forward(req, res);
		} else if(!user.getAdminn() &&  uri.contains("/admin")) {
			req.getRequestDispatcher("/views/Html/user/DangNhap.jsp").forward(req, res);
		}
		
		if(!error.isEmpty()) {

		} else {
			chain.doFilter(req, res);
		}
		
	}
       
	


}
