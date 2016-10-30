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
import com.jingbaba.dao.IGoodpicListDao;
import com.jingbaba.model.GoodpicList;
import com.jingbaba.util.TmPageInfo;
import com.jingbaba.util.TzStringUtils;

/**
 * 
 * 商品图片模块
 * GoodpicListDaoImpl
 * 创建人:jingbaba
 * 时间：2016年10月30日 20:50:31 
 * @version 1.0.0
 *
 */
@Repository
@Transactional
public class GoodpicListDaoImpl extends BaseDaoImpl<GoodpicList,Integer> implements IGoodpicListDao{
	
	/**
	 * 
	 * 查询所有的内容
	 * 求总数 sql hql qbc 
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
	 * 方法名：countGoodpicList
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:50:31 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countGoodpicList(TmParams params){
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

	public List<GoodpicList> findAllGoodpicListByGoodId(Integer goodid) {
		List<GoodpicList> goodpicList = new ArrayList<GoodpicList>();
		String hql = "FROM GoodpicList g WHERE g.good=?";
		Query query = getSession().createQuery(hql);
		query.setInteger(0, goodid);
		goodpicList = query.list();
		return goodpicList;
	}
}
