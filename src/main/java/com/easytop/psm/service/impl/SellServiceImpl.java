package com.easytop.psm.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.easytop.psm.dao.SellsDao;
import com.easytop.psm.model.SellEntry;
import com.easytop.psm.service.SellsService;

@Service
public class SellServiceImpl implements SellsService {
	
	private final static Logger log = Logger.getLogger(SellServiceImpl.class);
	@Autowired
	SellsDao sellsDao;

	@Override
	public void addSells(SellEntry sellEntry) {

		log.debug("添加手机销售量");
		sellsDao.addSells(sellEntry);
	}

	@Override
	public List<Map> findSells(String search,int offset,int limit) {
		
		log.debug("根据条件查询手机销售量");
		
		List<Map> list = sellsDao.findSells(search,offset,limit);
		
		return list;
	}
	
	@Override
	public List<String> findArea2(String s_sellName) {
		
		log.debug("根据销售量查询地区");
		
		List<String> strList = sellsDao.findArea2(s_sellName);
		
		return strList;
	}
	
	@Override
	public List<String> findArea() {
		List<String> strList = sellsDao.findArea();
		return strList;
	}

	@Override
	public Map<String, Integer> queryDate(String sql) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<SellEntry> areaQuerys(String year) {
		
		log.debug("正在进行区域查询.显示视图...");
		
		List<SellEntry> list = sellsDao.areaQuerys(year);
		
		return list;
	}
	
	@Override
	public List<String> queryRetailerArea() {
		
		log.debug("正在查询所有的销售商..");
		List<String> retailerList = sellsDao.queryRetailerArea();
		
		return retailerList;
	}

	@Override
	public List<String> queryBrand() {
		
		log.debug("正在查询所有的手机品牌..");
		
		List<String> brandList = sellsDao.queryBrand();
		
		return brandList;
	}

	@Override
	public List<String> queryModel() {
		
		log.debug("正在查询所有的手机型号...");
		
		List<String> modelList = sellsDao.queryModel();
		
		return modelList;
	}

	@Override
	public List<String> quertDate() {
		// TODO Auto-generated method stub
		
		log.debug("得到所有的日期..");
		List<String> dateList = sellsDao.quertDate();
		return dateList;
	}

	@Override
	public int sums(String search) {
		// TODO Auto-generated method stub
		log.debug("正在查询数据总数...");
		int sum = sellsDao.sums(search);
		return sum;
	}
	

}
