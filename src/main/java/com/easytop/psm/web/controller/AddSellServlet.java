package com.easytop.psm.web.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easytop.psm.model.SellEntry;
import com.easytop.psm.service.SellsService;
import com.easytop.psm.utils.ResultList;

/**
 * @author 唐辉
 *	销售量 添加
 */
@Controller
public class AddSellServlet{
	
	public static final Logger log = Logger.getLogger(AddSellServlet.class);
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private SellsService sellsService;
	
	
	
	@RequestMapping("/sell/add")
	public String add(SellEntry sellEntry,ModelMap model) {
		
		log.debug("正在进行手机销售量添加:"+sellEntry);
		
		sellsService.addSells(sellEntry);
		
		return null;
	}
	
	
	//得到所有的销售商,品牌,型号
	@RequestMapping("/sell/queryAreas")
	public String queryAreas(ModelMap model) {
		
		//第一次进 查询所有的销售商用于下拉框
		List<String> retailerList = sellsService.queryRetailerArea();
		
		//第一次进sell/add查询的品牌
		List<String> brandList = sellsService.queryBrand();
		
		//第一次进sell/add查询的型号
		List<String> modelList = sellsService.queryModel();
		
		model.addAttribute("retailerList", retailerList);
		model.addAttribute("brandList", brandList);
		model.addAttribute("modelList", modelList);
		
		return "/addSell";
	}
	
	// 用于转发到jsp 查询销售量页面
	@RequestMapping("/sell/toQuerySell")
	public String toQueryRetailer() {
		return "/findSells";
	}
	
	/**
	 * 用于装发区域 视图 
	 */
	@RequestMapping("/sell/areaQuery")
	public String toQueryArea() {
		
		return "/areaQuery";
	}
	
	@RequestMapping("/area/query/st")
	@ResponseBody
	public List<SellEntry> areaQuery(@RequestParam(name="year") String year) {
		
		log.debug("根据地区查找销售量...填充视图.");
		
		List<SellEntry> lists = sellsService.areaQuerys(year);
		
		List<SellEntry> list = new ArrayList<>();
		
		for(SellEntry sell:lists ) {
			
			if(list.size() == 0) {
				list.add(sell);
			}else {
				Iterator<SellEntry> it = list.iterator();
				while(it.hasNext()) {
					SellEntry temp = it.next();
					
					if(sell.getS_date().equals(temp.getS_date()) && sell.getS_sellName().equals(temp.getS_sellName()) && sell.getS_brand().equals(temp.getS_brand()) && sell.getS_model().equals(temp.getS_model())) {
						int number = sell.getS_number();
						temp.setS_number(temp.getS_number()+number);
						break;
					}
				}
				
			}
		}
		
		return list;
	}
	
	
	/**
	 * 由点击时进来展示所有的并跳转到jsp的方法
	 * @param model
	 * @return
	 */
	@RequestMapping("/sell/query")
	@ResponseBody
	public ResultList<Map> query(
			//当前页,默认是第一页
			@RequestParam(name="offset",defaultValue="1")int offset,
			//每一页显示多少条数据,默认是5条
			@RequestParam(name="limit",defaultValue="5")int limit,
			//@RequestParam(value="birthDate",required=false)String birthDate,
			@RequestParam(value="search",defaultValue="")String search
			
			) {
		
		/***
		 * 测试插件是否 ok 
		 */
		
		System.out.println(search+".."+offset+".."+limit);
		
		List<Map> list = sellsService.findSells(search,offset,limit);
		
		System.out.println(list);
		
		/***
		 * 拿到总的数据 条数
		 */
		int total = sellsService.sums(search);
		
		System.out.println(total);
		
		return new ResultList<>(list,total);
		
	}
	
}
