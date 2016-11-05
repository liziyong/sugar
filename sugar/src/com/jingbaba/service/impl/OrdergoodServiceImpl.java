package com.jingbaba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.BaseServiceImpl;
import com.jingbaba.dao.IOrdergoodDao;
import com.jingbaba.model.Ordergood;
import com.jingbaba.service.IOrdergoodService;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 订单中间表模块
 * OrdergoodServiceImpl 
 * 创建人:jingbaba 
 * 时间：2016年11月04日 21:11:16
 * 
 * @version 1.0.0
 * 
 */
@Service
public class OrdergoodServiceImpl extends BaseServiceImpl<Ordergood,Integer>  implements IOrdergoodService {
		
	public IOrdergoodDao getOrdergoodDao() {
		return (IOrdergoodDao) super.getBaseDao();
	}
	
	@Autowired
	public void setOrdergoodDao(IOrdergoodDao ordergoodDao) {
		super.setBaseDao(ordergoodDao);
	}
	
	/**
	 * 查询所有的内容--永远都在一起的，求总数
	 * 方法名：findOrdergoods
	 * 创建人：jingbaba 
	 * 时间：2016年11月04日 21:11:16
	 * @param params
	 * @param pageInfo
	 * @return List<Ordergood>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Ordergood> findOrdergoods(TmParams params,TmPageInfo pageInfo){
		return getOrdergoodDao().findOrdergoods(params, pageInfo);
	}
	
	/**
	 * 求总数
	 * 方法名：countOrdergood
	 * 创建人：jingbaba 
	 * 时间：2016年11月04日 21:11:16
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countOrdergood(TmParams params){
		return getOrdergoodDao().countOrdergood(params);
	}

	public List<Ordergood> findAllOrdergoodByShoporderId(Integer id) {
		return getOrdergoodDao().findAllOrdergoodByShoporderId(id);
	}
}
