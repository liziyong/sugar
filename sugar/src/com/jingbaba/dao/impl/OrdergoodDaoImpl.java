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
import com.jingbaba.dao.IOrdergoodDao;
import com.jingbaba.model.Ordergood;
import com.jingbaba.util.TmPageInfo;
import com.jingbaba.util.TzStringUtils;

/**
 * 
 * 订单中间表模块
 * OrdergoodDaoImpl
 * 创建人:jingbaba
 * 时间：2016年11月04日 21:11:16 
 * @version 1.0.0
 *
 */
@Repository
@Transactional
public class OrdergoodDaoImpl extends BaseDaoImpl<Ordergood,Integer> implements IOrdergoodDao{
	
	/**
	 * 
	 * 查询所有的内容
	 * 求总数 sql hql qbc 
	 * 方法名：findOrdergoods
	 * 创建人：jingbaba 
	 * 时间：2016年11月04日 21:11:16 
	 * @param params
	 * @param pageInfo
	 * @return List<Ordergood>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Ordergood> findOrdergoods(TmParams params,TmPageInfo pageInfo){
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
	 * 方法名：countOrdergood
	 * 创建人：jingbaba 
	 * 时间：2016年11月04日 21:11:16 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countOrdergood(TmParams params){
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

	public List<Ordergood> findAllOrdergoodByShoporderId(Integer id) {
		List<Ordergood> ordergoodList = new ArrayList<Ordergood>();
		String hql = "FROM Ordergood o WHERE o.shoporder=?";
		Query query = getSession().createQuery(hql);
		query.setInteger(0, id);
		ordergoodList = query.list();
		return ordergoodList;
	}
}
