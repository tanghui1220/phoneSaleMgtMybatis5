package com.easytop.psm.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.easytop.psm.model.SellEntry;

public interface SellsDao {
	
	public void addSells(@Param("sellEntry") SellEntry sellEntry);
	
	//拿到销售商的区域findArea
	public List<String> findArea2(@Param("s_sellName") String s_sellName);
	
	public List<String> findArea();
	
	// 根据条件拿到销售量的信息 search,offset,limit
	public List<Map> findSells(@Param("search") String search,@Param("offset") int offset,@Param("limit") int limit);

	public int sums(@Param("search") String search);
	
	//根据地区查询销售量  用于视图
	public List<SellEntry> areaQuerys(String sql);
	
	public List<String> queryRetailerArea(@Param("s_sellName") String s_sellName);
	
	
	public List<String> retailerArea();
	
	//查询所有的销售商
	public List<String> queryRetailerArea();
	
	//查询所有的品牌
	public List<String> queryBrand();
	
	//查询所有的手机型号
	public List<String> queryModel();
	
	//得到所有的日期
	public List<String> quertDate();
	
	
}
