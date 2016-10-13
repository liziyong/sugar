/**   
 * @Title: PageAction.java  
 * @Package com.momolela.web.user  
 * @Description: TODO  
 * @author momolela   
 * @date 2016-6-4 下午6:59:04  
 * @version V1.0   
 */
package com.jingbaba.web.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jingbaba.core.action.BaseAction;
import com.jingbaba.model.User;
import com.jingbaba.service.IUserService;
import com.jingbaba.util.SendMail;
import com.jingbaba.util.TzConstanst;
import com.jingbaba.util.TzStringUtils;
import com.opensymphony.xwork2.ActionContext;

/**
 * 
 * @ClassName: UserAction
 * @Description: 用户模块的action
 * @author: jingbaba
 * @date 2016-6-4 下午6:59:04
 * 
 */
@Controller("userAction")
@Scope("prototype")
public class UserAction extends BaseAction implements ServletRequestAware{
	
	private HttpServletRequest request;
	private Map<String, Object> datamap = new HashMap<String, Object>();
	
	@Autowired
	private IUserService userService;

	public Map<String, Object> getDatamap() {
		return datamap;
	}

	public void setDatamap(Map<String, Object> datamap) {
		this.datamap = datamap;
	}
	
	/**
	 * 用户登录
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String login(){
		Object[] param = new Object[2];
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		param[0] = username;
		param[1] = password;
		if (TzStringUtils.isNotEmpty(username) && TzStringUtils.isNotEmpty(password)) {
			String sql = "FROM User u WHERE u.username=? AND u.password=?";
			List<User> userList = userService.find(sql, param);
			if (userList != null&&userList.size()==1) {
				ActionContext.getContext().getSession().put(TzConstanst.SESSION_USERKEY, userList.get(0));
				result = "success";
			} else {
				result = "fail";
				message = "用户名或者密码错误";
			}
		}else{
			result = "fail";
			message = "用户名或者密码不能为空";
		}
		return AJAX_SUCCESS;
	}
	
	/**
	 * 用户注册
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String register(){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String againpassword = request.getParameter("againpassword");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		String hdatapage = request.getParameter("hdata");
		String hdatasession = (String)request.getSession().getAttribute("hdata");
		if(hdatasession!=null&hdatapage.equals(hdatasession)){
			request.getSession().removeAttribute("hdata");
			if(password.equals(againpassword)){
				User u = new User();
				u.setUsername(username);
				u.setPassword(password);
				u.setSex(sex);
				u.setEmail(email);
				u.setPicurl("images/user/pic.jpg");
				userService.save(u);
				
				// 开子线程发邮件
				SendMail sd = new SendMail();
				sd.setUser(u,"register");
				Thread t1 = new Thread(sd);
				t1.start();
				
				ActionContext.getContext().getSession().put(TzConstanst.SESSION_USERKEY, u);
				result = "success";
			}
			else{
				result = "fail";
				message = "密码不一致请重新注册";
			}
		}else{
			result = "fail";
			message = "注册成功！！！！但请不要重复注册。";
		}
		return AJAX_SUCCESS;
	}
	
	/**
	 * 注册时检测用户名是否已经被占用
	 * @return
	 */
	public String checkName(){
		Object[] param = new Object[1];
		String sql = "FROM User u WHERE u.username=?";
		String username = request.getParameter("username");
		param[0] = username;
		User u = (User) userService.find(sql,param);
		if(u!=null){
			result = "success";
			message = "用户已经存在^-^";
		}else{
			result = "fail";
		}
		return AJAX_SUCCESS;
	}
		
	/**
	 * 用户注销
	 * @return
	 */
	public String logout(){
		HttpSession session = request.getSession(false);
		if(session!=null){
			session.invalidate();
			return "toIndex";
		}else{
			return null;
		}
	}
	
	/**
	 * 更新用户信息
	 * @return
	 */
	public String updateInfo(){
		return AJAX_SUCCESS;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}
