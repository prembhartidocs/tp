package com.tp.dao.impl;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.ProjectionList;


/**
 * The Interface GenericDAO is used to provide a access mechanism for all value objects annotated for hibernate.
 * 
 * @param <T>
 *            the generic type
 * @param <ID>
 *            the generic type
 */
@SuppressWarnings("rawtypes")
public interface GenericDao<T, ID extends Serializable> {

    /**
     * Save.
     * 
     * @param entity
     *            the entity
     * @return the id
     */
    ID save(T entity);

    /**
     * Save or update.
     * 
     * @param entity
     *            the entity
     */
    void saveOrUpdate(T entity);

    /**
     * Delete.
     * 
     * @param entity
     *            the entity
     */
    void delete(T entity);

    /**
     * Flush.
     */
    void flush();

    /**
     * Find many.
     * 
     * @param query
     *            the query
     * @return the list
     */
    List<T> findMany(Query query);

    /**
     * Find by sql query.
     * 
     * @param query
     *            the query
     * @return the list
     */
    List findBySQLQuery(String query);

    /**
     * Find by sql query.
     * 
     * @param query
     *            the query
     * @return the list
     */
    List findBySQLQuery(Query query);

    /**
     * Creates the sql query.
     * 
     * @param query
     *            the query
     * @return the query
     */
    Query createSQLQuery(String query);

    /**
     * Creates the query.
     * 
     * @param query
     *            the query
     * @return the query
     */
    Query createQuery(String query);

    /**
     * Execute sql query.
     * 
     * @param query
     *            the query
     * @return the int
     */
    int executeSQLQuery(Query query);

    /**
     * Find by id.
     * 
     * @param id
     *            the id
     * @return the t
     */
    T findById(ID id);

    /**
     * Find by criteria.
     * 
     * @param criterion
     *            the criterion
     * @return the list
     */
    List<T> findByCriteria(Criterion... criterion);

    /**
     * Find by alias criteria.
     * 
     * @param aliases
     *            the aliases
     * @param criterion
     *            the criterion
     * @return the list
     */
    List<T> findByAliasCriteria(HashMap<String, String> aliases,
            Criterion... criterion);

    /**
     * Find by unique criteria.
     * 
     * @param criterion
     *            the criterion
     * @return the t
     */
    T findByUniqueCriteria(Criterion... criterion);

    /**
     * Find by projection criteria.
     * 
     * @param projectionList
     *            the projection list
     * @param criterion
     *            the criterion
     * @return the list
     */
    List findByProjectionCriteria(ProjectionList projectionList,
            Criterion... criterion);

}

