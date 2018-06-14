package com.easytop.psm.web.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easytop.psm.model.Retailer;
import com.easytop.psm.service.RetailerService;
import com.easytop.psm.utils.ResultList;

@Controller
public class RetailerOperation {
	
	private final static Logger log = Logger.getLogger(RetailerOperation.class);
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private RetailerService retailerService;
	
	@RequestMapping("/retailer/add")
	public String add(Retailer retailer) {
		
		int tempInt = retailerService.add(retailer);
		
		if(tempInt < 1) {
			log.debug("销售商添加失败");
		}else {
			log.debug("销售商添加成功");
		}
		
		return "/addRetailer";
	}
	
	// 用于转发到jsp 页面
	@RequestMapping("/retailer/toQueryRetailer")
	public String toQueryRetailer() {
		
		return "/findRetailer";
	}
	
	@RequestMapping("/retailer/query") 
	@ResponseBody
	public ResultList<Retailer> query(//当前页,默认是第一页
			@RequestParam(name="offset",defaultValue="1")int offset,
			//每一页显示多少条数据,默认是10条
			@RequestParam(name="limit",defaultValue="2")int limit,
			@RequestParam(name="search")String search) {
		
		log.debug("销售商条件查询:"+search);
		
		//List<Retailer> list = retailerService.findRetailer(Keyword, r_area);
		
		//model.addAttribute("list", list);
		
		System.out.println(offset+"..."+limit+"..."+search);
		
		List<Retailer> list = retailerService.findRetailers(offset,limit,search);
		
		int total=retailerService.sums(search);
		
		return new ResultList<>(list,total);
	}
	
}
