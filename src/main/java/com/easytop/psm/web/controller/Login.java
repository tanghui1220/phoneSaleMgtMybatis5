 package com.easytop.psm.web.controller;

import org.apache.ibatis.logging.Log;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.easytop.psm.model.User;
import com.easytop.psm.service.UserService;

//@WebServlet("/loginServlet")
@Controller
@RequestMapping("/log")
public class Login {
	
	@Autowired
	private UserService userService;
	
	private static final long serialVersionUID = 1L;
	
	static final Logger Log = Logger.getLogger(Login.class);
	
	@RequestMapping("/in")
	public String log(User user) {
		
		User tempUser = userService.login(user);
		
		Log.debug("获取当前登录的管理员:"+user+"--"+tempUser);
		
		if(tempUser == null) {
			return "defeated";
		}else {
			return "addPhone";
		}
		
	}
}
