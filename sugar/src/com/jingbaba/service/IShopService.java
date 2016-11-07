package com.jingbaba.service;

import java.util.List;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.IBaseService;
import com.jingbaba.model.Shop;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 店铺模块业务层
 * IShopService
 * 创建人:jingbaba
 * 时间：2016年10月30日 20:51:20
 * @version 1.0.0
 *
 */
public interface IShopService extends IBaseService<Shop,Integer> {
	/**
	 * 查询所有的内容
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

	public Shop findShopByUserId(Integer id);
}
