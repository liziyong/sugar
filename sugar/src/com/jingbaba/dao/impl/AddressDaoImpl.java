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
import com.jingbaba.dao.IAddressDao;
import com.jingbaba.model.Address;
import com.jingbaba.util.TmPageInfo;
import com.jingbaba.util.TzStringUtils;

/**
 * 
 * 用户地址模块
 * AddressDaoImpl
 * 创建人:jingbaba
 * 时间：2016年10月31日 22:06:54 
 * @version 1.0.0
 *
 */
@Repository
@Transactional
public class AddressDaoImpl extends BaseDaoImpl<Address,Integer> implements IAddressDao{
	
	/**
	 * 
	 * 查询所有的内容
	 * 求总数 sql hql qbc 
	 * 方法名：findAddresss
	 * 创建人：jingbaba 
	 * 时间：2016年10月31日 22:06:54 
	 * @param params
	 * @param pageInfo
	 * @return List<Address>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Address> findAddresss(TmParams params,TmPageInfo pageInfo){
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
	 * 方法名：countAddress
	 * 创建人：jingbaba 
	 * 时间：2016年10月31日 22:06:54 
	 * @param params
	 * @return int
	 * @exception 
	 * @since  1.0.0
	 */
	public int countAddress(TmParams params){
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

	public List<Address> findAllAddressByUserId(Integer userid) {
		List<Address> addressList = new ArrayList<Address>();
		String hql = "FROM Address a WHERE a.user = ?";
		Query query = getSession().createQuery(hql);
		query.setInteger(0, userid);
		addressList = query.list();
		return addressList;
	}
}
