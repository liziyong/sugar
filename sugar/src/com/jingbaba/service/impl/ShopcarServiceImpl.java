package com.jingbaba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.BaseServiceImpl;
import com.jingbaba.dao.IShopcarDao;
import com.jingbaba.model.Shop;
import com.jingbaba.model.Shopcar;
import com.jingbaba.service.IShopcarService;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 购物车模块
 * ShopcarServiceImpl 
 * 创建人:jingbaba 
 * 时间：2016年11月03日 08:32:11
 * 
 * @version 1.0.0
 * 
 */
@Service
public class ShopcarServiceImpl extends BaseServiceImpl<Shopcar,Integer>  implements IShopcarService {
		
	public IShopcarDao getShopcarDao() {
		return (IShopcarDao) super.getBaseDao();
	}
	
	@Autowired
	public void setShopcarDao(IShopcarDao shopcarDao) {
		super.setBaseDao(shopcarDao);
	}
	
	/**
	 * 查询所有的内容--永远都在一起的，求总数
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
		return getShopcarDao().findShopcars(params, pageInfo);
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
		return getShopcarDao().countShopcar(params);
	}

	public List<Shopcar> findAllGoodByUserId(Integer id) {
		return getShopcarDao().findAllGoodByUserId(id);
	}

	public List<Shop> findAllShopId(Integer id) {
		return getShopcarDao().findAllShopId(id);
	}

	public List<Shopcar> getAllShopcarByUserId(Integer id) {
		return getShopcarDao().getAllShopcarByUserId(id);
	}

	public Shopcar findAllByUserIdAndGoodId(Integer userid, Integer goodid) {
		return getShopcarDao().findAllByUserIdAndGoodId(userid, goodid);
	}

	public Shopcar findShopcarBuyUserIdAndGoodId(Integer userid, Integer goodid) {
		return getShopcarDao().findShopcarBuyUserIdAndGoodId(userid, goodid);
	}
}
