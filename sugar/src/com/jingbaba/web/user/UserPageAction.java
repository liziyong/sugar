/**   
 * @Title: PageAction.java  
 * @Package com.momolela.web.user  
 * @Description: TODO  
 * @author momolela   
 * @date 2016-6-4 下午6:59:04  
 * @version V1.0   
 */
package com.jingbaba.web.user;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jingbaba.core.action.BaseAction;
import com.jingbaba.dao.IUserDao;
import com.jingbaba.dao.impl.UserDaoImpl;
import com.jingbaba.service.IUserService;

/**
 * 前台页面的跳转使用的action，跳转前数据的加载都可以在这里执行。
 * @ClassName: PageAction
 * @Description: 
 * @author: momolela
 * @date 2016-6-4 下午6:59:04
 * 
 */
@Controller("userPageAction")
@Scope("prototype")
public class UserPageAction extends BaseAction implements ServletRequestAware{
	
	private HttpServletRequest request;
	
	// 跳向后台登录页面
	public String toAdminLogin(){
		
		return "adminlogin";
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}
