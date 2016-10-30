package com.jingbaba.service;

import java.util.List;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.IBaseService;
import com.jingbaba.model.CommentsList;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 商品评论模块业务层
 * ICommentsListService
 * 创建人:jingbaba
 * 时间：2016年10月30日 20:45:08
 * @version 1.0.0
 *
 */
public interface ICommentsListService extends IBaseService<CommentsList,Integer> {
	/**
	 * 查询所有的内容
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
