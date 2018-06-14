package com.easytop.psm.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.easytop.psm.model.SellEntry;

public interface SellsService {

	//手机销售录入
	void addSells(SellEntry sellEntry);
	
	//拿到销售商的区域
	List<String> findArea2(String s_sellName);
	
	
	List<String> findArea();
	
	
	//手机销售添加查询
	List<Map> findSells(String search,int offset,int limit);
	
	
	/***
	 * 查询总的页数  用于分页
	 * 
	 * @param sql
	 * @return
	 */
	 int sums(String search);
	
	//根据时间查询销售量
	Map<String , Integer> queryDate(String sql);
	
	//根据地区查询销售量
	List<SellEntry> areaQuerys(String year);
	
	//第一次进 查询所有的销售商用于下拉框
	List<String> queryRetailerArea();
	
	//第一次进sell/add查询的品牌
	List<String> queryBrand();
	
	//第一次进sell/add查询的型号
	List<String> queryModel();
	
	//第一次进入sell/query得到日期
	List<String> quertDate();
}
