package com.tp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tp.dao.impl.UserDaoImpl;
import com.tp.dto.Register;
import com.tp.entities.User;
import com.tp.exception.DuplicateEntryException;

@Service
public class RegisterServiceImpl {

	@Autowired
	private UserDaoImpl userDao;

	@Transactional(readOnly = true, timeout = 2000)
	public String register(Register userDetails) throws DuplicateEntryException {
		String id = null;
		try {
			id = userDao.saveUser(new User(userDetails.getUserName(),

			userDetails.getPassword(), 0, userDetails.getEmail(), userDetails
					.getDob()));
		} catch (DuplicateEntryException dee) {
		}
		return id;
	}

	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}

}
