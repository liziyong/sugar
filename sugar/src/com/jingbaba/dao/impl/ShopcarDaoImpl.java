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
import com.jingbaba.dao.IShopcarDao;
import com.jingbaba.model.Shop;
import com.jingbaba.model.Shopcar;
import com.jingbaba.util.TmPageInfo;
import com.jingbaba.util.TzStringUtils;

/**
 * 
 * 购物车模块
 * ShopcarDaoImpl
 * 创建人:jingbaba
 * 时间：2016年11月03日 08:32:11 
 * @version 1.0.0
 *
 */
@Repository
@Transactional
public class ShopcarDaoImpl extends BaseDaoImpl<Shopcar,Integer> implements IShopcarDao{
	
	/**
	 * 
	 * 查询所有的内容
	 * 求总数 sql hql qbc 
	 * 方法名：findShopcars
	 * 创建人：jingbaba 
	 * 时间：2016年11月03日 08:32:11 
	 * @param params
	 * @param pageInfo
	 * @return List<Shopcar>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Shopcar> findShopcars(TmParams params,TmPageInfo pageInfo){
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
	 * 方法名：countShopcar
	 * 创建人：jingbaba 
	 * 时间：2016年11月03日 08:32:11 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countShopcar(TmParams params){
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

	public List<Shopcar> findAllGoodByUserId(Integer id) {
		List<Shopcar> shopcarList = new ArrayList<Shopcar>();
		String hql = "FROM Shopcar s WHERE s.user=?";
		Query query = getSession().createQuery(hql);
		query.setInteger(0, id);
		shopcarList = query.list();
		return shopcarList;
	}

	public List<Shop> findAllShopId(Integer id) {
		List<Shop> shopidList = new ArrayList<Shop>();
		String hql = "SELECT s.shop FROM Shopcar s WHERE s.user=? GROUP BY s.shop";
		Query query = getSession().createQuery(hql);
		query.setInteger(0, id);
		shopidList = query.list();
		return shopidList;
	}
}
