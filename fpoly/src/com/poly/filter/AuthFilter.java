 package com.poly.filter;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oe.entity.*;

@WebFilter(filterName = "/AuthFilter",urlPatterns = {"/au"})
public class AuthFilter  implements com.poly.filter.HttpFilter{

	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("AuthFilter");
		String uri = req.getRequestURI();
		User user = (User) req.getSession().getAttribute("user");
		String error ="";
		if(user == null) {
			error = res.encodeURL("Vui long dang nhap");
		} else if(!user.getAdminn() &&  uri.contains("/admin")) {
			error = res.encodeURL("Vui long dang nhap vai tro admin");
		}
		
		if(!error.isEmpty()) {
			req.getSession().setAttribute("securi", uri);
			res.sendRedirect(""+res.encodeRedirectURL(error));
		} else {
			chain.doFilter(req, res);
		}
		
	}
       
	


}
