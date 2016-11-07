package com.jingbaba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.BaseServiceImpl;
import com.jingbaba.dao.IShopDao;
import com.jingbaba.model.Shop;
import com.jingbaba.service.IShopService;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 店铺模块
 * ShopServiceImpl 
 * 创建人:jingbaba 
 * 时间：2016年10月30日 20:51:20
 * 
 * @version 1.0.0
 * 
 */
@Service
public class ShopServiceImpl extends BaseServiceImpl<Shop,Integer>  implements IShopService {
		
	public IShopDao getShopDao() {
		return (IShopDao) super.getBaseDao();
	}
	
	@Autowired
	public void setShopDao(IShopDao shopDao) {
		super.setBaseDao(shopDao);
	}
	
	/**
	 * 查询所有的内容--永远都在一起的，求总数
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
		return getShopDao().findShops(params, pageInfo);
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
		return getShopDao().countShop(params);
	}

	public Shop findShopByUserId(Integer id) {
		return getShopDao().findShopByUserId(id);
	}
}
