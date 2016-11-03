package com.jingbaba.dao;


import java.util.List;

import com.jingbaba.core.dao.IBaseDao;
import com.jingbaba.core.dao.TmParams;
import com.jingbaba.model.Shop;
import com.jingbaba.model.Shopcar;
import com.jingbaba.util.TmPageInfo;


/**
 * 
 * 购物车模块
 * IShopcarDao
 * 创建人:jingbaba
 * 时间：2015年4月25日-下午9:21:05 
 * @version 1.0.0
 *
 */
public interface IShopcarDao extends IBaseDao<Shopcar,Integer> {
	/**
	 * 查询所有的内容--永远都在一起的，求总数
	 * 方法名：findShopcars
	 * 创建人：jingbaba 
	 * 时间：2016年11月03日 08:32:11
	 * @param params
	 * @param pageInfo
	 * @return List<Shopcar>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Shopcar> findShopcars(TmParams params,TmPageInfo pageInfo);
	
	/**
	 * 求总数
	 * 方法名：countShopcar
	 * 创建人：jingbaba 
	 * 时间：2016年11月03日 08:32:11 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countShopcar(TmParams params);

	public List<Shopcar> findAllGoodByUserId(Integer id);

	public List<Shop> findAllShopId(Integer id);
	
}