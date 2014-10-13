package com.tp.dao.impl;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.dao.DataIntegrityViolationException;

import com.tp.dto.Login;
import com.tp.entities.User;
import com.tp.exception.DuplicateEntryException;

//@Repository
public class UserDaoImpl extends GenericDaoImpl<User, java.lang.String> {

	public UserDaoImpl(Class<User> clazz, Class<String> idz) {
		super(clazz, idz);
	}

/*	public void main(String[] args) {
		Criteria cr1 = getSession().createCriteria(User.class);
		// cr1.setFetchMode("project_user", FetchMode.JOIN);
		Criterion uid = Restrictions.eq("id", 18);

		List<User> users = findByCriteria(uid);

	}*/

	public User getUserByCredential(Login login) {
		Criterion userName = Restrictions.eq("userName", login.getUserName());
		Criterion password = Restrictions.eq("password", login.getPassword());
		//Criteria cr2=getSession().createCriteria(Xyz.class, "xyz");
	
		/*Criteria cr1 = getSession().createCriteria(User.class, "user");
		cr1.setFetchMode("xyz", FetchMode.SELECT);
		cr1.


		ProjectionList columns = Projections.projectionList()
				.add(Projections.property("userName"))
				.add(Projections.property("xyz.xrole"));
		cr1.setProjection(columns);
		
		List<Object[]> list = cr1.list();
		for(Object[] arr : list){
            System.out.println(Arrays.toString(arr));
        }

		// cr1.setFetchMode("project_user", FetchMode.JOIN);
		Criterion uid = Restrictions.eq("id", 18);

		List<User> users = findByCriteria(uid);
		Iterator<User> itr = users.iterator();
		while (itr.hasNext()) {
			System.out.println(itr.next().getUserName());
		}*/

		return (User) findByUniqueCriteria(userName, password);
	}

	public String saveUser(User user) {
		String id = null;
		try {
			id = save(user);
		} catch (DataIntegrityViolationException dve) {
			System.out.println("Already exists");
			throw new DuplicateEntryException("duplicate entry exists", dve);

		}
		return id;
	}
}