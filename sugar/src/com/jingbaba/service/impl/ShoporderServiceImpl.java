package com.jingbaba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.BaseServiceImpl;
import com.jingbaba.dao.IShoporderDao;
import com.jingbaba.model.Shop;
import com.jingbaba.model.Shoporder;
import com.jingbaba.service.IShoporderService;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 订单模块
 * ShoporderServiceImpl 
 * 创建人:jingbaba 
 * 时间：2016年11月03日 08:41:16
 * 
 * @version 1.0.0
 * 
 */
@Service
public class ShoporderServiceImpl extends BaseServiceImpl<Shoporder,Integer>  implements IShoporderService {
		
	public IShoporderDao getShoporderDao() {
		return (IShoporderDao) super.getBaseDao();
	}
	
	@Autowired
	public void setShoporderDao(IShoporderDao shoporderDao) {
		super.setBaseDao(shoporderDao);
	}
	
	/**
	 * 查询所有的内容--永远都在一起的，求总数
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
		return getShoporderDao().findShoporders(params, pageInfo);
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
		return getShoporderDao().countShoporder(params);
	}

	public List<Shoporder> findAllOrderByUserId(Integer id) {
		return getShoporderDao().findAllOrderByUserId(id);
	}

	public List<Shoporder> findAllOrderByUserIdAndStatus(Integer id,
			Integer status) {
		return getShoporderDao().findAllOrderByUserIdAndStatus(id, status);
	}

	public List<Shop> findAllShopByUserId(Integer id) {
		return getShoporderDao().findAllShopByUserId(id);
	}
	
	public List<Shop> findAllShopByUserIdAndStatus(Integer id, Integer status) {
		return getShoporderDao().findAllShopByUserIdAndStatus(id, status);
	}

	public List<Shoporder> findAllOrderByUserIdNotZero(Integer id) {
		return getShoporderDao().findAllOrderByUserIdNotZero(id);
	}

	public List<Shop> findAllShopByUserIdNotZero(Integer id) {
		return getShoporderDao().findAllShopByUserIdNotZero(id);
	}

	public Shoporder addShoporder(Shoporder shoporder) {
		return getShoporderDao().addShoporder(shoporder);
	}

	public List<Shoporder> findAllOrderByShopId(Integer shopid, Integer i) {
		return getShoporderDao().findAllOrderByShopId( shopid,  i);
	}
}
