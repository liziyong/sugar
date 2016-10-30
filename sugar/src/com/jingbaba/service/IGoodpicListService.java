package com.jingbaba.service;

import java.util.List;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.IBaseService;
import com.jingbaba.model.GoodpicList;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 商品图片模块业务层
 * IGoodpicListService
 * 创建人:jingbaba
 * 时间：2016年10月30日 20:50:31
 * @version 1.0.0
 *
 */
public interface IGoodpicListService extends IBaseService<GoodpicList,Integer> {
	/**
	 * 查询所有的内容
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
