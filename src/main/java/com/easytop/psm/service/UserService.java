package com.easytop.psm.service;

import com.easytop.psm.model.User;

public interface UserService {

	/**
	 * 登录
	 * @param user
	 * @return
	 */
	public User login(User user);
}
