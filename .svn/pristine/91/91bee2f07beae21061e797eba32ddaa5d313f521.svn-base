package com.easytop.psm.service.impl;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.easytop.psm.dao.UserDao;
import com.easytop.psm.model.User;
import com.easytop.psm.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	private final static Logger log = Logger.getLogger(UserServiceImpl.class);
	
	@Autowired
	UserDao userDao;
	
	@Override
	public User login(User user) {
		
		log.debug("管理员正在登录");
		
		User tempuser = userDao.login(user);
		if(tempuser == null) {
			log.debug("管理员登录失败");
		}
		return tempuser;
	}
	
	

}
