package com.oe.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.oe.entity.User;
import com.oe.entity.Video;
import com.oe.untils.jpaUntils;

public class DaoUser extends DaoASM<User, String>{
	
	EntityManager em = jpaUntils.getenEntityManager();
	EntityTransaction trans = em.getTransaction();

	@Override
	public User create(User entity) {
		try {
			trans.begin();
			em.persist(entity);
			trans.commit();
			return entity;
		} catch (Exception e) {
			trans.rollback();
			throw e;
		}
	}

	@Override
	public User update(User entity) {
		try {
			trans.begin();
			em.merge(entity);
			trans.commit();
			return entity;
		} catch (Exception e) {
			trans.rollback();
			throw e;
		}
	}

	@Override
	public User delete(String k) {
		User entity = this.findByID(k);
		try {
			trans.begin();
			em.remove(entity);
			trans.commit();
			return entity;
		} catch (Exception e) {
			trans.rollback();
			throw e;
		}
	}

	@Override
	public User findByID(String k) {
		User entity = em.find(User.class, k);
		return entity;
	}

	@Override
	public List<User> findByAll() {
		String jqpl ="SELECT u FROM User u";
		TypedQuery<User> query = em.createQuery(jqpl,User.class);
		return query.getResultList();
	}
	
	public List<User> findByAll(int page, int pageSize) {
		String jqpl ="SELECT u FROM User u";
		TypedQuery<User> query = em.createQuery(jqpl,User.class);
		query.setFirstResult(page*pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}
	
	
	public User checkLogin(String id, String password){
		String jqpl = "SELECT u FROM User u WHERE u.id = : id and u.passwordd = : password";
		TypedQuery<User> query = em.createQuery(jqpl,User.class);
		query.setParameter("id", id);
		query.setParameter("password", password);
		return query.getSingleResult();
	}
	
	public User checkEmail(String email){
		String jqpl = "SELECT u FROM User u WHERE u.email = : email";
		TypedQuery<User> query = em.createQuery(jqpl,User.class);
		query.setParameter("email", email);
		return query.getSingleResult();
	}

}
