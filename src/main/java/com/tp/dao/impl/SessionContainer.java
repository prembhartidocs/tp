/*
 * 
 */
package com.tp.dao.impl;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * The Class SessionContainer warps sessionFactory to separate the layer from
 * GenericDAO.
 */
public class SessionContainer {

	/** Object that contains Hibernate Session. */
	private SessionFactory sessionFactory;

	/** Logger for Logging. */
	protected final Logger logger = Logger.getLogger(this.getClass());

	/**
	 * Gets the session.
	 * 
	 * @return the session
	 */
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	/**
	 * Sets the session factory.
	 * 
	 * @param sessionFactory
	 *            the new session factory
	 */
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
