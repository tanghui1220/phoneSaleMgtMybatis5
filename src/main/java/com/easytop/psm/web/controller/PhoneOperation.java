package com.easytop.psm.web.controller;


import java.util.List;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easytop.psm.model.Phone;
import com.easytop.psm.service.PhoneService;
import com.easytop.psm.utils.ResultList;

@Controller
public class PhoneOperation{
	
	private final static Logger log = Logger.getLogger(PhoneOperation.class);

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private PhoneService phoneService;
	
	@RequestMapping("/phone/add")
	public String addPhone(@Valid Phone phone,BindingResult result,ModelMap model) {
		
		log.debug("正在进行手机添加.");
		
		if(result.hasErrors()) {
			return "addPhone";
		}
		
		int tempInt = phoneService.PhoneAdd(phone);
		
		if(tempInt == 0) {
			log.debug("手机添加失败");
		}else {
			log.debug("手机添加成功");
		}
		
		return "addPhone";
	}
	
	@RequestMapping("/phone/add/toPhone")
	public String addToPhone() {
		return "addPhone";
	}
		
	
	@RequestMapping("/phone/toQueryPhone")
	public String toQueryPhone() {
		return "findPhone";
	}

	@RequestMapping("/phone/query")
	@ResponseBody
	public ResultList<Phone> query(
			//当前页,默认是第一页
			@RequestParam(name="offset",defaultValue="1")int offset,
			//每一页显示多少条数据,默认是10条
			@RequestParam(name="limit",defaultValue="5")int limit,
			//@RequestParam(value="birthDate",required=false)String birthDate,
			@RequestParam(value="search")String search
			
			) {
		
		/***
		 * 测试插件是否 ok 
		 */
		
		List<Phone> list = phoneService.PhoneFindsss(search,offset,limit);
		
		/***
		 * 拿到总的数据 条数
		 */
		int total = phoneService.sums(search);
		
		return new ResultList<>(list,total);
		
	}
}
