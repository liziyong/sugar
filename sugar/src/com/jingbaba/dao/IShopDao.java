package com.jingbaba.dao;


import java.util.List;

import com.jingbaba.core.dao.IBaseDao;
import com.jingbaba.core.dao.TmParams;
import com.jingbaba.model.Shop;
import com.jingbaba.util.TmPageInfo;


/**
 * 
 * 店铺模块
 * IShopDao
 * 创建人:jingbaba
 * 时间：2015年4月25日-下午9:21:05 
 * @version 1.0.0
 *
 */
public interface IShopDao extends IBaseDao<Shop,Integer> {
	/**
	 * 查询所有的内容--永远都在一起的，求总数
	 * 方法名：findShops
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:51:20
	 * @param params
	 * @param pageInfo
	 * @return List<Shop>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Shop> findShops(TmParams params,TmPageInfo pageInfo);
	
	/**
	 * 求总数
	 * 方法名：countShop
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:51:20 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countShop(TmParams params);
	
}