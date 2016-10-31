package com.jingbaba.dao;


import java.util.List;

import com.jingbaba.core.dao.IBaseDao;
import com.jingbaba.core.dao.TmParams;
import com.jingbaba.model.Address;
import com.jingbaba.util.TmPageInfo;


/**
 * 
 * 用户地址模块
 * IAddressDao
 * 创建人:jingbaba
 * 时间：2015年4月25日-下午9:21:05 
 * @version 1.0.0
 *
 */
public interface IAddressDao extends IBaseDao<Address,Integer> {
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
	public List<Address> findAddresss(TmParams params,TmPageInfo pageInfo);
	
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
	public int countAddress(TmParams params);

	/**
	 * @param userid
	 * @return
	 */
	public List<Address> findAllAddressByUserId(Integer userid);
	
}