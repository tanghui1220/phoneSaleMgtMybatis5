package com.easytop.psm.web.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.easytop.psm.model.User;
import com.google.gson.Gson;

@Controller
public class UserController {

	private final static Logger log = Logger.getLogger(UserController.class);

	/***
	 * 用户添加方法
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping("/api/user/add")


	/***
	 * 在spring 中返回JSON数据，只需要添加 @ResponseBody
	 * 
	 * 消息转换器
	 * 
	 * 
	 * <html> <head>
	 * 
	 * </head> </html>
	 * 
	 * @param user
	 * @return
	 */
	@ResponseBody
	/****
	 * 转换器----> java --->JSON JSON-Java
	 * 
	 * @RequestBody 说明该请求的数据参数来自于请求体
	 * 
	 * 
	 *              请求头： url？key=value 请求体： (POST) key=value {json}
	 * 
	 * 
	 * 
	 * @RequestBody (json-java,xml-java)
	 * @ResponseBody(java-xml,json)
	 * 
	 * 								@param user
	 * @return
	 */
	public User add(@RequestBody User user) {
		log.debug("添加用户数据到服务器:" + user);
		// 添加成功，返回添加的数据
		return user;
	}

	@RequestMapping("/api/user/get")
	@ResponseBody
	public List<User> get() {
		List<User> users = Arrays.asList(new User());

		return users;
	}

	@RequestMapping("/api/user/delete")
	@ResponseBody
	public Map<String, Object> delete(@RequestParam("id") String id) {
		log.debug("-----------------删除的用户数据ID 为:" + id);
		List<User> users = Arrays.asList(new User());
		// "success:true"
		Map<String, Object> result = new HashMap();
		result.put("success", false);
		return result;
	}

	public static void main(String[] args) {

		//
		String json = "{\"username\":\"zhangsan\"}";

		// google gson api 将Java对象转换成JSON ，JSON---》java对象
		Gson gson = new Gson();
		Map map = gson.fromJson(json, Map.class);
		System.out.println(map);
		User user = gson.fromJson(json, User.class);
		System.out.println(user);

	}
}