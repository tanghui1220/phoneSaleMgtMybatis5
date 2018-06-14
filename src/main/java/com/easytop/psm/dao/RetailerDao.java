package com.easytop.psm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.easytop.psm.model.Retailer;

public interface RetailerDao {
	
	public int add(@Param("retailer") Retailer retailer);
	
	public int remove(int id) ;
	
	public Retailer findById(int id);
	
	//关键字 跟 地区查询
	public List<Retailer> querys(@Param("key") String key,@Param("area") String area);
	
	public List<Retailer> findRetailers(@Param("offset")int offset,@Param("limit")int limit,@Param("search")String search);
	
	public int sums(@Param("search") String search);
}
