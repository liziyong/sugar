package com.jingbaba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.BaseServiceImpl;
import com.jingbaba.dao.ICommentsListDao;
import com.jingbaba.model.CommentsList;
import com.jingbaba.service.ICommentsListService;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 商品评论模块
 * CommentsListServiceImpl 
 * 创建人:jingbaba 
 * 时间：2016年10月30日 20:45:08
 * 
 * @version 1.0.0
 * 
 */
@Service
public class CommentsListServiceImpl extends BaseServiceImpl<CommentsList,Integer>  implements ICommentsListService {
		
	public ICommentsListDao getCommentsListDao() {
		return (ICommentsListDao) super.getBaseDao();
	}
	
	@Autowired
	public void setCommentsListDao(ICommentsListDao commentsListDao) {
		super.setBaseDao(commentsListDao);
	}
	
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
	public List<CommentsList> findCommentsLists(TmParams params,TmPageInfo pageInfo){
		return getCommentsListDao().findCommentsLists(params, pageInfo);
	}
	
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
	public int countCommentsList(TmParams params){
		return getCommentsListDao().countCommentsList(params);
	}

	public List<CommentsList> findAllCommentsListByGoodId(Integer goodid) {
		return getCommentsListDao().findAllCommentsListByGoodId(goodid);
	}
}
