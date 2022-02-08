package com.oe.dao;

import java.util.List;


public abstract class DaoASM<E,K> {
	
	 abstract public E create(E entity);
	 abstract public E update(E entity);
	 abstract public E delete(K k);
	 abstract public E findByID(K k);
	 abstract public List<E> findByAll();
}
