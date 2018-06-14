package com.easytop.psm.service;

import java.util.List;

import com.easytop.psm.model.Retailer;

public interface RetailerService {
	
	// 添加销售商
	public int add(Retailer retailer);
	
	//删除销售商
	public void remove(int id);
	

	//查询销售商
	public Retailer findById(int id);
	
	
	//根据关键字查询销售商
	public List<Retailer> findRetailer(String temp,String area);
	
	public List<Retailer> findRetailers(int offset,int limit,String search);
	
	/***
	 * 得到总页数
	 */
	public int sums(String search);
	
}
