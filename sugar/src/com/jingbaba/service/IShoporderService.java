package com.jingbaba.service;

import java.util.List;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.IBaseService;
import com.jingbaba.model.Shop;
import com.jingbaba.model.Shoporder;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 订单模块业务层
 * IShoporderService
 * 创建人:jingbaba
 * 时间：2016年11月03日 08:41:16
 * @version 1.0.0
 *
 */
public interface IShoporderService extends IBaseService<Shoporder,Integer> {
	/**
	 * 查询所有的内容
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

	public com.jingbaba.model.Shoporder addShoporder(Shoporder shoporder);

	public List<Shoporder> findAllOrderByShopId(Integer shopid, Integer i);

}
