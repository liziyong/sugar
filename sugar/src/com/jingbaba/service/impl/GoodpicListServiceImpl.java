package com.jingbaba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.BaseServiceImpl;
import com.jingbaba.dao.IGoodpicListDao;
import com.jingbaba.model.GoodpicList;
import com.jingbaba.service.IGoodpicListService;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 商品图片模块
 * GoodpicListServiceImpl 
 * 创建人:jingbaba 
 * 时间：2016年10月30日 20:50:31
 * 
 * @version 1.0.0
 * 
 */
@Service
public class GoodpicListServiceImpl extends BaseServiceImpl<GoodpicList,Integer>  implements IGoodpicListService {
		
	public IGoodpicListDao getGoodpicListDao() {
		return (IGoodpicListDao) super.getBaseDao();
	}
	
	@Autowired
	public void setGoodpicListDao(IGoodpicListDao goodpicListDao) {
		super.setBaseDao(goodpicListDao);
	}
	
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
	public List<GoodpicList> findGoodpicLists(TmParams params,TmPageInfo pageInfo){
		return getGoodpicListDao().findGoodpicLists(params, pageInfo);
	}
	
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
	public int countGoodpicList(TmParams params){
		return getGoodpicListDao().countGoodpicList(params);
	}

	public List<GoodpicList> findAllGoodpicListByGoodId(Integer goodid) {
		return getGoodpicListDao().findAllGoodpicListByGoodId(goodid);
	}
}
