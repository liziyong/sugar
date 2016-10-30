package com.jingbaba.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.jingbaba.core.dao.BaseDaoImpl;
import com.jingbaba.core.dao.TmParams;
import com.jingbaba.dao.IGoodDao;
import com.jingbaba.model.Good;
import com.jingbaba.util.TmPageInfo;
import com.jingbaba.util.TzStringUtils;

/**
 * 
 * 商品模块
 * GoodDaoImpl
 * 创建人:jingbaba
 * 时间：2016年10月30日 20:38:32 
 * @version 1.0.0
 *
 */
@Repository
@Transactional
public class GoodDaoImpl extends BaseDaoImpl<Good,Integer> implements IGoodDao{
	
	/**
	 * 
	 * 查询所有的内容
	 * 求总数 sql hql qbc 
	 * 方法名：findGoods
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:38:32 
	 * @param params
	 * @param pageInfo
	 * @return List<Good>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Good> findGoods(TmParams params,TmPageInfo pageInfo){
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
	 * 方法名：countGood
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:38:32 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countGood(TmParams params){
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
}
