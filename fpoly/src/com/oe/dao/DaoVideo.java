package com.oe.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.oe.entity.Video;
import com.oe.untils.jpaUntils;

public class DaoVideo extends DaoASM<Video, String>{

	EntityManager em = jpaUntils.getenEntityManager();
	EntityTransaction trans = em.getTransaction();
	
	@Override
	public Video create(Video entity) {
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
	public Video update(Video entity) {
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
	public Video delete(String k) {
		Video entity = this.findByID(k);
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
	public Video findByID(String k) {
		Video entity = em.find(Video.class, k);
		return entity;
	}

	@Override
	public List<Video> findByAll() {
		String jqpl ="SELECT u FROM Video u";
		TypedQuery<Video> query = em.createQuery(jqpl,Video.class);
		return query.getResultList();
	}

	public List<Video> findByAll(int page, int pageSize){
		String jqpl ="SELECT u FROM User u";
		TypedQuery<Video> query = em.createQuery(jqpl,Video.class);
		query.setFirstResult(page*pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}
}
