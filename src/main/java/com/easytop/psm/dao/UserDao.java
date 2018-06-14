package com.easytop.psm.dao;

import org.apache.ibatis.annotations.Param;

import com.easytop.psm.model.User;

public interface UserDao {
	
	//登录
	public User login(@Param("user") User user); 
	
}
