package com.oe.untils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class jpaUntils {
	private static EntityManagerFactory factory;
	
	public static EntityManager getenEntityManager() {
		if(factory==null|| !factory.isOpen()) {
			factory= Persistence.createEntityManagerFactory("SOF3011_Nhom2_ASM");
		}
		return factory.createEntityManager();
	}
	
	static public void shutdown() {
		if(factory!=null && factory.isOpen()) {
			factory.close();
		}
		factory=null;
	}
}
