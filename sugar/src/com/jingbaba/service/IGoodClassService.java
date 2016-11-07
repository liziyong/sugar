package com.jingbaba.service;

import java.util.List;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.IBaseService;
import com.jingbaba.model.GoodClass;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 商品类型模块业务层
 * IGoodClassService
 * 创建人:jingbaba
 * 时间：2016年11月08日 02:00:25
 * @version 1.0.0
 *
 */
public interface IGoodClassService extends IBaseService<GoodClass,Integer> {
	/**
	 * 查询所有的内容
	 * 方法名：findGoodClasss
	 * 创建人：jingbaba 
	 * 时间：2016年11月08日 02:00:25 
	 * @param params
	 * @param pageInfo
	 * @return List<GoodClass>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<GoodClass> findGoodClasss(TmParams params,TmPageInfo pageInfo);
	
	/**
	 * 求总数
	 * 方法名：countGoodClass
	 * 创建人：jingbaba 
	 * 时间：2016年11月08日 02:00:25 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countGoodClass(TmParams params);
}
