package com.oe.controll.admin;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oe.untils.jpaUntils;
import com.oe.entity.User;
import com.oe.entity.Favorite;
import com.oe.entity.Report;

@WebServlet("/admin/report")
public class reports extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = jpaUntils.getenEntityManager();
		try {
			String jpql = "SELECT new Report(u.video.titile, count(u) , max(u.likeDate), min(u.likeDate)) FROM Favorite u GROUP BY u.video.titile";
			TypedQuery<Report> query = em.createQuery(jpql, Report.class);	
			List<Report> list = query.getResultList();
			request.setAttribute("thongkeFavorite", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		try {
			
			StoredProcedureQuery query = em.createStoredProcedureQuery("Report.favoriteByYear");
			List<String> list = query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
//		try {
//			String idvideo = request.getParameter("id");
//			String jpql ="SELECT u.user FROM Favorite u WHERE u.video.id = : vid";
//			TypedQuery<User> query = em.createQuery(jpql, User.class);
//			query.setParameter("vid",idvideo);
//			List<User> list = query.getResultList();
//			request.setAttribute("user", list);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
		
		request.getRequestDispatcher("/views/Html/admin/Reports.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
