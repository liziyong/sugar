package com.jingbaba.dao;


import java.util.List;

import com.jingbaba.core.dao.IBaseDao;
import com.jingbaba.core.dao.TmParams;
import com.jingbaba.model.Good;
import com.jingbaba.util.TmPageInfo;


/**
 * 
 * 商品模块
 * IGoodDao
 * 创建人:jingbaba
 * 时间：2015年4月25日-下午9:21:05 
 * @version 1.0.0
 *
 */
public interface IGoodDao extends IBaseDao<Good,Integer> {
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
	public List<Good> findGoods(TmParams params,TmPageInfo pageInfo);
	
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
	public int countGood(TmParams params);

	public List<Good> findAllGoodByShopId(Integer shopid);

	public List<Good> findAllHotGoodByShopIdAndStatus(Integer shopid,Integer status);
	
}