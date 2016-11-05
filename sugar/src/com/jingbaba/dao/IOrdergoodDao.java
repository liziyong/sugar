package com.jingbaba.dao;


import java.util.List;

import com.jingbaba.core.dao.IBaseDao;
import com.jingbaba.core.dao.TmParams;
import com.jingbaba.model.Ordergood;
import com.jingbaba.util.TmPageInfo;


/**
 * 
 * 订单中间表模块
 * IOrdergoodDao
 * 创建人:jingbaba
 * 时间：2015年4月25日-下午9:21:05 
 * @version 1.0.0
 *
 */
public interface IOrdergoodDao extends IBaseDao<Ordergood,Integer> {
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
	public List<Ordergood> findOrdergoods(TmParams params,TmPageInfo pageInfo);
	
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
	public int countOrdergood(TmParams params);

	public List<Ordergood> findAllOrdergoodByShoporderId(Integer id);
	
}