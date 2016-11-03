package com.jingbaba.service;

import java.util.List;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.IBaseService;
import com.jingbaba.model.Shop;
import com.jingbaba.model.Shopcar;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 购物车模块业务层
 * IShopcarService
 * 创建人:jingbaba
 * 时间：2016年11月03日 08:32:11
 * @version 1.0.0
 *
 */
public interface IShopcarService extends IBaseService<Shopcar,Integer> {
	/**
	 * 查询所有的内容
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
