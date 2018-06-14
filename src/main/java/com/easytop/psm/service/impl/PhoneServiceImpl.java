package com.easytop.psm.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.easytop.psm.dao.PhoneDao;
import com.easytop.psm.model.Phone;
import com.easytop.psm.service.PhoneService;

@Service
public class PhoneServiceImpl implements PhoneService{

	private final static Logger log = Logger.getLogger(PhoneServiceImpl.class);
	
	@Autowired
	PhoneDao phoneDao;

	@Override
	public int PhoneAdd(Phone phone) {
		
		log.debug("正在添加手机:"+phone);
		
		int tempInt = phoneDao.addPhone(phone);
		
		if(tempInt == -1) {
			log.debug("添加手机:"+phone+"失败...");
		}else {
			log.debug("添加手机:"+phone+"成功!");
		}
		return tempInt;
		
	}

	@Override
	public void PhoneDelete(int id) {

		log.debug("正在删除id为:--"+id+"--的手机");
		
		phoneDao.deletePhone(id);
		
	}

	@Override
	public Phone PhoneFind(int id) {

		log.debug("正在查询ID为:"+id+"的手机");
		Phone tempPhone = phoneDao.findPhone(id);
		
		if(tempPhone == null) {
			log.debug("查询失败...");
		}else {
			log.debug("查询成功:你查询的手机是:"+tempPhone);
		}
		
		return tempPhone;
	}

	@Override
	public List<Phone> PhoneFind(String key, String brand, String lowest, String tall,int offset, int limit) {
		
		log.debug("正在根据条件查询手机");
		List<Phone> list = phoneDao.query(key,brand,lowest,tall, offset, limit);
		
		return list;
	}
	/***
	 * 测试插件分页是否ok 
	 */
	@Override
	public List<Phone> PhoneFindsss(String search,int offset, int limit) {
		
		List<Phone> list =  phoneDao.PhoneFindsss(search,offset,limit);
		
		return list;
	}

	@Override
	public int sums(String birthDate) {
		
		int sum = phoneDao.sums(birthDate);
		
		return sum;
	}
	
}
