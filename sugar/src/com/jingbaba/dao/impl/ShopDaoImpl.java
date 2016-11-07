package com.jingbaba.dao.impl;

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
import com.jingbaba.dao.IShopDao;
import com.jingbaba.model.Shop;
import com.jingbaba.util.TmPageInfo;
import com.jingbaba.util.TzStringUtils;

/**
 * 
 * 店铺模块
 * ShopDaoImpl
 * 创建人:jingbaba
 * 时间：2016年10月30日 20:51:20 
 * @version 1.0.0
 *
 */
@Repository
@Transactional
public class ShopDaoImpl extends BaseDaoImpl<Shop,Integer> implements IShopDao{
	
	/**
	 * 
	 * 查询所有的内容
	 * 求总数 sql hql qbc 
	 * 方法名：findShops
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:51:20 
	 * @param params
	 * @param pageInfo
	 * @return List<Shop>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Shop> findShops(TmParams params,TmPageInfo pageInfo){
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
	 * 方法名：countShop
	 * 创建人：jingbaba 
	 * 时间：2016年10月30日 20:51:20 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countShop(TmParams params){
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

	public Shop findShopByUserId(Integer id) {
		Shop shop = new Shop();
		String hql = "FROM Shop s WHERE s.shopowner=?";
		Query query = getSession().createQuery(hql);
		query.setInteger(0, id);
		shop = (Shop) query.uniqueResult();
		return shop;
	}
}
