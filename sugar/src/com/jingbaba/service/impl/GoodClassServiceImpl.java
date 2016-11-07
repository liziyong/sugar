package com.jingbaba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.BaseServiceImpl;
import com.jingbaba.dao.IGoodClassDao;
import com.jingbaba.model.GoodClass;
import com.jingbaba.service.IGoodClassService;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 商品类型模块
 * GoodClassServiceImpl 
 * 创建人:jingbaba 
 * 时间：2016年11月08日 02:00:25
 * 
 * @version 1.0.0
 * 
 */
@Service
public class GoodClassServiceImpl extends BaseServiceImpl<GoodClass,Integer>  implements IGoodClassService {
		
	public IGoodClassDao getGoodClassDao() {
		return (IGoodClassDao) super.getBaseDao();
	}
	
	@Autowired
	public void setGoodClassDao(IGoodClassDao goodClassDao) {
		super.setBaseDao(goodClassDao);
	}
	
	/**
	 * 查询所有的内容--永远都在一起的，求总数
	 * 方法名：findGoodClasss
	 * 创建人：jingbaba 
	 * 时间：2016年11月08日 02:00:25
	 * @param params
	 * @param pageInfo
	 * @return List<GoodClass>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<GoodClass> findGoodClasss(TmParams params,TmPageInfo pageInfo){
		return getGoodClassDao().findGoodClasss(params, pageInfo);
	}
	
	/**
	 * 求总数
	 * 方法名：countGoodClass
	 * 创建人：jingbaba 
	 * 时间：2016年11月08日 02:00:25
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countGoodClass(TmParams params){
		return getGoodClassDao().countGoodClass(params);
	}
}
