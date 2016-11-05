package com.jingbaba.dao;


import java.util.List;

import com.jingbaba.core.dao.IBaseDao;
import com.jingbaba.core.dao.TmParams;
import com.jingbaba.model.Shop;
import com.jingbaba.model.Shoporder;
import com.jingbaba.util.TmPageInfo;


/**
 * 
 * 订单模块
 * IShoporderDao
 * 创建人:jingbaba
 * 时间：2015年4月25日-下午9:21:05 
 * @version 1.0.0
 *
 */
public interface IShoporderDao extends IBaseDao<Shoporder,Integer> {
	/**
	 * 查询所有的内容--永远都在一起的，求总数
	 * 方法名：findShoporders
	 * 创建人：jingbaba 
	 * 时间：2016年11月03日 08:41:16
	 * @param params
	 * @param pageInfo
	 * @return List<Shoporder>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Shoporder> findShoporders(TmParams params,TmPageInfo pageInfo);
	
	/**
	 * 求总数
	 * 方法名：countShoporder
	 * 创建人：jingbaba 
	 * 时间：2016年11月03日 08:41:16 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countShoporder(TmParams params);

	public List<Shoporder> findAllOrderByUserId(Integer id);

	public List<Shoporder> findAllOrderByUserIdAndStatus(Integer id,
			Integer status);

	public List<Shop> findAllShopByUserId(Integer id);
	
	public List<Shop> findAllShopByUserIdAndStatus(Integer id,Integer status);

	public List<Shoporder> findAllOrderByUserIdNotZero(Integer id);

	public List<Shop> findAllShopByUserIdNotZero(Integer id);

	public Shoporder addShoporder(Shoporder shoporder);
	
}