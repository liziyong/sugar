/**   
 * @Title: UserDaoImpl.java  
 * @Package com.jingbaba.dao.impl  
 * @Description: TODO  
 * @author jingbaba   
 * @date 2016-5-12 下午6:23:51  
 * @version V1.0   
 */
package com.jingbaba.dao.impl;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.jingbaba.core.dao.BaseDaoImpl;
import com.jingbaba.dao.IUserDao;
import com.jingbaba.model.User;

/**
 * @ClassName: UserDaoImpl
 * @Description: 用户操作的实现
 * @author: jingbaba
 * @date 2016-5-12 下午6:23:51
 */
@Repository
@Transactional
public class UserDaoImpl extends BaseDaoImpl<User, Integer> implements IUserDao {

}
