package com.jingbaba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.BaseServiceImpl;
import com.jingbaba.dao.IGoodDao;
import com.jingbaba.model.Good;
import com.jingbaba.service.IGoodService;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 商品模块
 * GoodServiceImpl 
 * 创建人:jingbaba 
 * 时间：2016年10月30日 20:38:32
 * 
 * @version 1.0.0
 * 
 */
@Service
public class GoodServiceImpl extends BaseServiceImpl<Good,Integer>  implements IGoodService {
		
	public IGoodDao getGoodDao() {
		return (IGoodDao) super.getBaseDao();
	}
	
	@Autowired
	public void setGoodDao(IGoodDao goodDao) {
		super.setBaseDao(goodDao);
	}
	
	/**
	 * 查询所有的内容--永远都在一起的，求总数
	 * 方法名：findGoods
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:38:32
	 * @param params
	 * @param pageInfo
	 * @return List<Good>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Good> findGoods(TmParams params,TmPageInfo pageInfo){
		return getGoodDao().findGoods(params, pageInfo);
	}
	
	/**
	 * 求总数
	 * 方法名：countGood
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:38:32
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countGood(TmParams params){
		return getGoodDao().countGood(params);
	}
}
