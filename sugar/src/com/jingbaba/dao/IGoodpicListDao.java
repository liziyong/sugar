package com.jingbaba.dao;


import java.util.List;

import com.jingbaba.core.dao.IBaseDao;
import com.jingbaba.core.dao.TmParams;
import com.jingbaba.model.GoodpicList;
import com.jingbaba.util.TmPageInfo;


/**
 * 
 * 商品图片模块
 * IGoodpicListDao
 * 创建人:jingbaba
 * 时间：2015年4月25日-下午9:21:05 
 * @version 1.0.0
 *
 */
public interface IGoodpicListDao extends IBaseDao<GoodpicList,Integer> {
	/**
	 * 查询所有的内容--永远都在一起的，求总数
	 * 方法名：findGoodpicLists
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:50:31
	 * @param params
	 * @param pageInfo
	 * @return List<GoodpicList>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<GoodpicList> findGoodpicLists(TmParams params,TmPageInfo pageInfo);
	
	/**
	 * 求总数
	 * 方法名：countGoodpicList
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:50:31 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countGoodpicList(TmParams params);

	/**
	 * @param goodid
	 * @return
	 */
	public List<GoodpicList> findAllGoodpicListByGoodId(Integer goodid);
	
}