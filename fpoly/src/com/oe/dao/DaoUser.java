package com.oe.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import com.oe.entity.User;

public class DaoUser extends DaoASM<User, String>{

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
	
	public User checkLogin(String id, String password){
		String jqpl = "SELECT u FROM User u WHERE u.id = : id and u.passwordd = : password";
		TypedQuery<User> query = em.createQuery(jqpl,User.class);
		query.setParameter("id", id);
		query.setParameter("password", password);
		return query.getSingleResult();
	}

}
