package com.easytop.psm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.easytop.psm.model.Phone;

public interface PhoneDao {
	
	public int addPhone(@Param("phone") Phone phone);
	
	public void deletePhone(@Param("id") int id);
	
	public Phone findPhone(@Param("id") int id);
	
	public List<Phone> query(@Param("keyword") String keyword,@Param("p_brand") String p_brand,@Param("lowest") String lowest,@Param("maxest") String maxest,@Param("offset")int offset,@Param("limit") int limit);
	
	public List<Phone> PhoneFindsss(@Param("search")String search,@Param("offset")int offset,@Param("limit")int limit);
	
	/***
	 * 拿到总的数据条数
	 * @return
	 */
	public int sums(@Param("search") String search);
}
