/**   
 * @Title: UserServiceImpl.java  
 * @Package com.jingbaba.service.impl  
 * @Description: TODO  
 * @author jingbaba   
 * @date 2016-5-12 下午6:17:42  
 * @version V1.0   
 */
package com.jingbaba.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jingbaba.core.service.BaseServiceImpl;
import com.jingbaba.dao.IUserDao;
import com.jingbaba.model.User;
import com.jingbaba.service.IUserService;

/**
 * @ClassName: UserServiceImpl
 * @author: jingbaba
 * @date 2016-5-12 下午6:17:42  
 */
@Service
public class UserServiceImpl extends BaseServiceImpl<User, Integer> implements IUserService{

	public IUserDao getUserDao() {
		return (IUserDao) super.getBaseDao();
	}
	
	@Autowired
	public void setUserDao(IUserDao userDao) {
		super.setBaseDao(userDao);
	}

}
