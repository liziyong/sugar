/**   
 * @Title: UserServiceImpl.java  
 * @Package com.momolela.service.impl  
 * @Description: TODO  
 * @author momolela   
 * @date 2016-5-12 下午6:17:42  
 * @version V1.0   
 */
package com.jingbaba.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jingbaba.dao.IAdminDao;
import com.jingbaba.model.Admin;
import com.jingbaba.service.IAdminService;

/**
 *  @ClassName: UserServiceImpl  @Description:   @author: momolela
 *  @date 2016-5-12 下午6:17:42  
 */
@Service
public class AdminServiceImpl implements IAdminService {

	@Autowired
	private IAdminDao IadminDao;

	public Admin findAdmin(String account, String password) {
		return IadminDao.findAdmin(account, password);
	}

}
