package com.tp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tp.dao.impl.UserDaoImpl;
import com.tp.dto.Login;
import com.tp.entities.User;
import com.tp.vo.UserVO;

/**
 * @author premkumar.bharti
 */
@Service
public class LoginServiceImpl {

	@Autowired
	private UserDaoImpl userDao;

	/**
	 * @param login
	 * @return UserVo : User View Object to be fed in session
	 */
	@Transactional(readOnly = true, timeout = 2000)
	public UserVO getUserByNameAndPassword(Login login) {
		User user = userDao.getUserByCredential(login);
		UserVO userVO = null;
		if (user != null) {
			userVO = new UserVO(user.getUserName(), user.getEmail(),
					user.getDob());
		}
		return userVO;
	}

	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}
}