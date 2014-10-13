package com.tp.dao.impl;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.ProjectionList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.transaction.annotation.Transactional;

import com.tp.exception.DuplicateEntryException;

/**
 * The Class GenericDAOImpl contains implementation of GenericDAO
 * 
 * @param <T>
 *            the generic type
 * @param <ID>
 *            the generic type
 */
@SuppressWarnings("all")
/* @Transactional(readOnly=true) */
public class GenericDaoImpl<T, ID extends Serializable> implements
		GenericDao<T, ID> {

	/** The clazz. */
	private Class<T> clazz;

	/** The idz. */
	private Class<ID> idz;

	/** The session container that contains session factory. */
	private SessionContainer sessionContainer;

	/**
	 * Instantiates a new generic dao impl.
	 * 
	 * @param clazz
	 *            the clazz
	 * @param idz
	 *            the idz
	 */
	public GenericDaoImpl(Class<T> clazz, Class<ID> idz) {
		this.clazz = clazz;
		this.idz = idz;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.portal.dao.GenericDAO#save(java.lang.Object)
	 */
	public ID save(T entity) {
		ID i = null;
		Session s = getSession();
		i = (ID) s.save(entity);
		return i;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.portal.dao.GenericDAO#saveOrUpdate(java.lang.Object)
	 */
	public void saveOrUpdate(T entity) {
		Session s = getSession();
		s.saveOrUpdate(entity);

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.portal.dao.GenericDAO#delete(java.lang.Object)
	 */
	public void delete(T entity) {
		Session s = getSession();
		s.delete(entity);

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.portal.dao.GenericDAO#flush()
	 */
	public void flush() {
		getSession().flush();
	}

	/*
	 * 
	 * 
	 * 
	 * /* (non-Javadoc)
	 * 
	 * @see com.portal.dao.GenericDAO#findBySQLQuery(java.lang.String)
	 */
	public List findBySQLQuery(String query) {
		List t = null;
		SQLQuery sqlQuery = getSession().createSQLQuery(query);
		t = sqlQuery.list();
		return t;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.portal.dao.GenericDAO#createSQLQuery(java.lang.String)
	 */
	public Query createSQLQuery(String query) {
		Query sqlQuery = getSession().createSQLQuery(query);
		return sqlQuery;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.portal.dao.GenericDAO#createQuery(java.lang.String)
	 */
	public Query createQuery(String query) {
		Query sqlQuery = getSession().createQuery(query);
		return sqlQuery;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.portal.dao.GenericDAO#findById(java.io.Serializable)
	 */
	public T findById(ID id) {
		T t = null;
		Session s = getSession();
		t = (T) s.get(clazz, id);
		return t;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.portal.dao.GenericDAO#findByCriteria(org.hibernate.criterion.Criterion
	 * [])
	 */
	// @Transactional
	public List<T> findByCriteria(Criterion... criterion) {
		List<T> t = null;
		Session s = getSession();
		Criteria criteria = s.createCriteria(clazz);
		for (Criterion c : criterion) {
			criteria.add(c);
		}
		t = (List<T>) criteria.list();
		return t;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.portal.dao.GenericDAO#findByAliasCriteria(java.util.HashMap,
	 * org.hibernate.criterion.Criterion[])
	 */
	public List<T> findByAliasCriteria(HashMap<String, String> aliases,
			Criterion... criterion) {
		List<T> t = null;
		Session s = getSession();
		Criteria criteria = s.createCriteria(clazz);
		for (Entry<String, String> e : aliases.entrySet()) {
			criteria.createAlias(e.getKey(), e.getValue());
		}
		for (Criterion c : criterion) {
			criteria.add(c);
		}
		t = (List<T>) criteria.list();
		return t;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.portal.dao.GenericDAO#findByUniqueCriteria(org.hibernate.criterion
	 * .Criterion[])
	 */
	public T findByUniqueCriteria(Criterion... criterion) {
		T t = null;
		Session s = getSession();
		Criteria criteria = s.createCriteria(clazz);
		for (Criterion c : criterion) {
			criteria.add(c);
		}
		t = (T) criteria.uniqueResult();
		return t;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.portal.dao.GenericDAO#findByProjectionCriteria(org.hibernate.criterion
	 * .ProjectionList, org.hibernate.criterion.Criterion[])
	 */
	public List findByProjectionCriteria(ProjectionList projectionList,
			Criterion... criterion) {
		List t = null;
		Session s = getSession();
		Criteria criteria = s.createCriteria(clazz);
		criteria.setProjection(projectionList);
		for (Criterion c : criterion) {
			criteria.add(c);
		}
		t = criteria.list();
		return t;
	}

	// /** Generic Logger **/
	// protected Logger logger = LogManager.getLogger(clazz);
	/**
	 * Gets the session.
	 * 
	 * @return the session
	 */
	public Session getSession() {
		return sessionContainer.getSession();
	}

	/**
	 * Sets the session container that contains session factory.
	 * 
	 * @param sessionContainer
	 *            the new session container that contains session factory
	 */
	@Autowired
	public void setSessionContainer(SessionContainer sessionContainer) {
		this.sessionContainer = sessionContainer;
	}

	public List<T> findMany(Query query) {
		// TODO Auto-generated method stub
		return null;
	}

	public List findBySQLQuery(Query query) {
		// TODO Auto-generated method stub
		return null;
	}

	public int executeSQLQuery(Query query) {
		// TODO Auto-generated method stub
		return 0;
	}
}