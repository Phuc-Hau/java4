package com.oe.controll.forgetpass;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oe.dao.DaoUser;
import com.oe.entity.User;
import com.oe.untils.mailUntils;

@WebServlet({"/oe/forgetpass","/oe/forgetmail","/oe/datpass","/oe/capcha","/oe/datlaipass"})
public class timtk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/Html/forgetpass/timtk.jsp").forward(request, response);
		
	}
	
	User user = new User();
	DaoUser daoUser = new DaoUser();
	String ema ="";
	String emails ="";
	String capChas="";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURI();
		
		if(url.contains("/oe/forgetpass")) {
			request.getRequestDispatcher("/views/Html/forgetpass/timtk.jsp").forward(request, response);
		} else if(url.contains("/oe/forgetmail")) {
			doForgetpass(request, response);
			
		}else if(url.contains("/oe/datpass")) {
			String capCha = request.getParameter("capcha");
			
			if(capCha.equals(capChas)) {
				request.getRequestDispatcher("/views/Html/forgetpass/datpass.jsp").forward(request, response);
			} else {
				request.setAttribute("email", ema);
				request.getRequestDispatcher("/views/Html/forgetpass/capcha.jsp").forward(request, response);
			}
		} else if(url.contains("/oe/capcha")) {
			
			doCapcha(request, response);
		} else if(url.contains("/oe/datlaipass")) {
			String pass = request.getParameter("password_new");
			user.setPasswordd(pass);
			System.out.println(user.getId()+" "+user.getPasswordd());
			try {
				daoUser.update(user);
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/oe/trangchu").forward(request, response);
		}
	}

	private void doForgetpass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		emails =email;
		
		try {
		 	user = daoUser.checkEmail(email);
		 	String sao= String.valueOf(email.charAt(0));
	        int u=email.indexOf("@")-1;
	        for(int i = 0;i<email.length();i++){
	        	if(i >= u) {
	        		sao+=String.valueOf(email.charAt(i));
	        	} else sao+="*";
	        }
	        ema = sao;
			request.setAttribute("email", sao);
			request.getRequestDispatcher("/views/Html/forgetpass/comfixEmail.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("mess", "Không có tài khoảng này");
			doGet(request, response);
			
		}
		
		
        
	}
	
	private void doCapcha(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
        capChas="";
        for (int i = 0; i < 6; i++) {
            double randomDouble = Math.random();
            randomDouble = randomDouble * 9+1;
            capChas += (int) randomDouble;
        }
        
		mailUntils emailUntils = new mailUntils(emails, "Đặt lại mật khẩu", capChas);
		if(emailUntils.guiEmail()) {
			System.out.println("Thanh cong");
		} else System.out.println("that bai");
		
		request.setAttribute("email", ema);
		request.getRequestDispatcher("/views/Html/forgetpass/capcha.jsp").forward(request, response);
	}
}
