package com.jingbaba.service;

import java.util.List;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.IBaseService;
import com.jingbaba.model.Good;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 商品模块业务层
 * IGoodService
 * 创建人:jingbaba
 * 时间：2016年10月30日 20:38:32
 * @version 1.0.0
 *
 */
public interface IGoodService extends IBaseService<Good,Integer> {
	/**
	 * 查询所有的内容
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
}
