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
import com.jingbaba.dao.IShoporderDao;
import com.jingbaba.model.Shop;
import com.jingbaba.model.Shopcar;
import com.jingbaba.model.Shoporder;
import com.jingbaba.util.TmPageInfo;
import com.jingbaba.util.TzStringUtils;

/**
 * 
 * 订单模块
 * ShoporderDaoImpl
 * 创建人:jingbaba
 * 时间：2016年11月03日 08:41:16 
 * @version 1.0.0
 *
 */
@Repository
@Transactional
public class ShoporderDaoImpl extends BaseDaoImpl<Shoporder,Integer> implements IShoporderDao{
	
	/**
	 * 
	 * 查询所有的内容
	 * 求总数 sql hql qbc 
	 * 方法名：findShoporders
	 * 创建人：jingbaba 
	 * 时间：2016年11月03日 08:41:16 
	 * @param params
	 * @param pageInfo
	 * @return List<Shoporder>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Shoporder> findShoporders(TmParams params,TmPageInfo pageInfo){
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
	 * 方法名：countShoporder
	 * 创建人：jingbaba 
	 * 时间：2016年11月03日 08:41:16 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countShoporder(TmParams params){
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

	public List<Shoporder> findAllOrderByUserId(Integer id, Integer pn) {
		List<Shoporder> shoporderList = new ArrayList<Shoporder>();
		String hql = "FROM Shoporder s WHERE s.user=?";
		Query query = getSession().createQuery(hql);
		query.setInteger(0, id);
		query.setFirstResult(pn);
		query.setMaxResults(5);
		shoporderList = query.list();
		return shoporderList;
	}

	public List<Shoporder> findAllOrderByUserIdAndStatus(Integer id,
			Integer status, Integer pn) {
		List<Shoporder> shoporderList = new ArrayList<Shoporder>();
		String hql = "FROM Shoporder s WHERE s.user=? AND s.status=?";
		Query query = getSession().createQuery(hql);
		query.setInteger(0, id);
		query.setInteger(1, status);
		query.setFirstResult(pn);
		query.setMaxResults(5);
		shoporderList = query.list();
		return shoporderList;
	}

	public List<Shop> findAllShop(Integer id) {
		List<Shop> shopList = new ArrayList<Shop>();
		String hql = "SELECT s.shop FROM Shoporder s WHERE s.user=? GROUP BY s.shop";
		Query query = getSession().createQuery(hql);
		query.setInteger(0, id);
		shopList = query.list();
		return shopList;
	}
}
