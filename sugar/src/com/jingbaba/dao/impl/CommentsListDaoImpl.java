package com.jingbaba.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.jingbaba.core.dao.BaseDaoImpl;
import com.jingbaba.core.dao.TmParams;
import com.jingbaba.dao.ICommentsListDao;
import com.jingbaba.model.CommentsList;
import com.jingbaba.util.TmPageInfo;
import com.jingbaba.util.TzStringUtils;

/**
 * 
 * 商品评论模块
 * CommentsListDaoImpl
 * 创建人:jingbaba
 * 时间：2016年10月30日 20:45:08 
 * @version 1.0.0
 *
 */
@Repository
@Transactional
public class CommentsListDaoImpl extends BaseDaoImpl<CommentsList,Integer> implements ICommentsListDao{
	
	/**
	 * 
	 * 查询所有的内容
	 * 求总数 sql hql qbc 
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
		DetachedCriteria detachedCriteria = getCurrentDetachedCriteria();
		if(params!=null){
			if(TzStringUtils.isNotEmpty(params.getKeyword())){
				detachedCriteria.add(Restrictions.like("name", params.getKeyword(),MatchMode.ANYWHERE));
			}
		}
		detachedCriteria.addOrder(Order.desc("createTime"));
		detachedCriteria.add(Restrictions.eq("isDelete",0));
		return findByDetachedCriteria(detachedCriteria,pageInfo);
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
		DetachedCriteria detachedCriteria = getCurrentDetachedCriteria();
		if(params!=null){
			if(TzStringUtils.isNotEmpty(params.getKeyword())){
				detachedCriteria.add(Restrictions.like("name", params.getKeyword(),MatchMode.ANYWHERE));
			}
		}
		detachedCriteria.setProjection(Projections.count("id"));
		detachedCriteria.add(Restrictions.eq("isDelete",0));
		Number number = (Number)detachedCriteria.getExecutableCriteria(getSession()).uniqueResult();
		return number==null?0:number.intValue();
	}

	public List<CommentsList> findAllCommentsListByGoodId(Integer goodid) {
		List<CommentsList> commentsList = new ArrayList<CommentsList>();
		String hql = "FROM CommentsList c WHERE c.good=?";
		Query query = getSession().createQuery(hql);
		query.setInteger(0, goodid);
		commentsList = query.list();
		return commentsList;
	}
}
