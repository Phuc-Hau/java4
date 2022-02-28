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
import com.oe.dao.DaoFavorite;
import com.oe.dao.DaoShare;
import com.oe.dao.DaoUser;
import com.oe.entity.Favorite;
import com.oe.entity.Report;
import com.oe.entity.Share;

@WebServlet("/admin/report")
public class reports extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = jpaUntils.getenEntityManager();

		DaoShare daoShare = new DaoShare();
		DaoUser daoUser = new DaoUser();
		DaoFavorite daoFavorite = new DaoFavorite();
		try {
			String jpql = "SELECT new Report(u.video.titile, count(u) , max(u.likeDate), min(u.likeDate)) FROM Favorite u GROUP BY u.video.titile";
			TypedQuery<Report> query = em.createQuery(jpql, Report.class);	
			List<Report> list = query.getResultList();
			request.setAttribute("thongkeFavorite", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		 

		try {
			List<Favorite> list = daoFavorite.findByAll();
			request.setAttribute("favorite", list);
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			List<Share> list = daoShare.findByAll();
			System.out.println(list.get(0).getUser().getFullname());
			request.setAttribute("share", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/views/Html/admin/Reports.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
