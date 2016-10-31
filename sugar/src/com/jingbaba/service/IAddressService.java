package com.jingbaba.service;

import java.util.List;

import com.jingbaba.core.dao.TmParams;
import com.jingbaba.core.service.IBaseService;
import com.jingbaba.model.Address;
import com.jingbaba.util.TmPageInfo;

/**
 * 
 * 用户地址模块业务层
 * IAddressService
 * 创建人:jingbaba
 * 时间：2016年10月31日 22:06:54
 * @version 1.0.0
 *
 */
public interface IAddressService extends IBaseService<Address,Integer> {
	/**
	 * 查询所有的内容
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
