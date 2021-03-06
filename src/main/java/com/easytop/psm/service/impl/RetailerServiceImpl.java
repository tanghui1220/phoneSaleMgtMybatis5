package com.easytop.psm.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.easytop.psm.dao.RetailerDao;
import com.easytop.psm.model.Retailer;
import com.easytop.psm.service.RetailerService;

@Service
public class RetailerServiceImpl implements RetailerService {
	
	private final static Logger log = Logger.getLogger(RetailerServiceImpl.class);
	
	@Autowired
	RetailerDao retailerDao;
	
	@Override
	public int add(Retailer retailer) {
		
		log.debug("正在添加销售商");
		int tempInt = retailerDao.add(retailer);
		
		return tempInt;
	}

	@Override
	public void remove(int id) {
		
		log.debug("根据id删除销售商");
		
		int tempInt = retailerDao.remove(id);
		
	}

	@Override
	public Retailer findById(int id) {

		log.debug("根据id查询销售商");
		
		Retailer retailer = retailerDao.findById(id);
		
		log.debug("查询的销售商为:"+retailer);
		
		return retailer;
	}

	@Override
	public List<Retailer> findRetailer(String key, String area) {
		
		log.debug("根据条件查询销售商");
		
		List<Retailer> list = retailerDao.querys(key, area);
		
		return list;
	}

	@Override
	public List<Retailer> findRetailers(int offset,int limit,String search) {
		
		log.debug("正在使用分页插件进行条件查询销售商...");
		
		List<Retailer> list = retailerDao.findRetailers(offset,limit,search);
		
		return list;
	}

	@Override
	public int sums(String search) {
		// TODO Auto-generated method stub
		log.debug("查询总的数据条数,用于分页");
		
		int sum = retailerDao.sums(search);
		
		return sum;
	}
	

}
