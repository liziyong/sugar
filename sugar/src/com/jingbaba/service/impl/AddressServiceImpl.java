package com.jingbaba.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.BaseServiceImpl;
import com.jingbaba.dao.IAddressDao;
import com.jingbaba.model.Address;
import com.jingbaba.service.IAddressService;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 用户地址模块
 * AddressServiceImpl 
 * 创建人:jingbaba 
 * 时间：2016年10月31日 22:06:54
 * 
 * @version 1.0.0
 * 
 */
@Service
public class AddressServiceImpl extends BaseServiceImpl<Address,Integer>  implements IAddressService {
		
	public IAddressDao getAddressDao() {
		return (IAddressDao) super.getBaseDao();
	}
	
	@Autowired
	public void setAddressDao(IAddressDao addressDao) {
		super.setBaseDao(addressDao);
	}
	
	/**
	 * 查询所有的内容--永远都在一起的，求总数
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
		return getAddressDao().findAddresss(params, pageInfo);
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
		return getAddressDao().countAddress(params);
	}

	public List<Address> findAllAddressByUserId(Integer userid) {
		return getAddressDao().findAllAddressByUserId(userid);
	}
}
