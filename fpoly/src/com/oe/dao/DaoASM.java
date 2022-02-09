package com.oe.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import com.oe.untils.jpaUntils;


public abstract class DaoASM<E,K> {
	
	EntityManager em = jpaUntils.getenEntityManager();
	EntityTransaction trans = em.getTransaction();
	
	 abstract public E create(E entity);
	 abstract public E update(E entity);
	 abstract public E delete(K k);
	 abstract public E findByID(K k);
	 abstract public List<E> findByAll();

}
