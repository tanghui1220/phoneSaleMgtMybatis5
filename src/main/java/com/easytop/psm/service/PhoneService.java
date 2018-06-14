package com.easytop.psm.service;

import java.util.List;

import com.easytop.psm.model.Phone;

public interface PhoneService {
	

	//手机添加
	int PhoneAdd(Phone phone);
	
	//删除手机
	void PhoneDelete(int id);
	
	//查看手机
	Phone PhoneFind(int id);
	
	/**
	 *  测试插件分页
	 *  
	 * @param offset
	 * @param limit
	 * @return
	 */
	List<Phone> PhoneFindsss(String search,int offset,int limit);
	
	
	/***
	 * 拿到数据库的总条数
	 * @return
	 */
	int sums(String search);
	
	/**
	 * 根据条件查询
	 * @param keyword
	 * @param p_brand
	 * @param lowest
	 * @param maxest
	 * @return
	 */
	java.util.List<Phone> PhoneFind(String keyword,String p_brand,String lowest,String maxest,int offset,int limit);
	
	
	
}
