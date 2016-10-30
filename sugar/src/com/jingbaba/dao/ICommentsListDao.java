package com.jingbaba.dao;


import java.util.List;

import com.jingbaba.core.dao.IBaseDao;
import com.jingbaba.core.dao.TmParams;
import com.jingbaba.model.CommentsList;
import com.jingbaba.util.TmPageInfo;


/**
 * 
 * 商品评论模块
 * ICommentsListDao
 * 创建人:jingbaba
 * 时间：2015年4月25日-下午9:21:05 
 * @version 1.0.0
 *
 */
public interface ICommentsListDao extends IBaseDao<CommentsList,Integer> {
	/**
	 * 查询所有的内容--永远都在一起的，求总数
	 * 方法名：findCommentsLists
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:45:08
	 * @param params
	 * @param pageInfo
	 * @return List<CommentsList>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<CommentsList> findCommentsLists(TmParams params,TmPageInfo pageInfo);
	
	/**
	 * 求总数
	 * 方法名：countCommentsList
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:45:08 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countCommentsList(TmParams params);

	/**
	 * @param goodid
	 * @return
	 */
	public List<CommentsList> findAllCommentsListByGoodId(Integer goodid);
	
}