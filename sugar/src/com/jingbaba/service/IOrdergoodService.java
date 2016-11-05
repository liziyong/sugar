package com.jingbaba.service;

import java.util.List;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.IBaseService;
import com.jingbaba.model.Ordergood;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 订单中间表模块业务层
 * IOrdergoodService
 * 创建人:jingbaba
 * 时间：2016年11月04日 21:11:16
 * @version 1.0.0
 *
 */
public interface IOrdergoodService extends IBaseService<Ordergood,Integer> {
	/**
	 * 查询所有的内容
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
