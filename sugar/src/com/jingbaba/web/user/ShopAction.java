package com.jingbaba.web.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jingbaba.core.action.BaseAction;
import com.jingbaba.model.Shop;
import com.jingbaba.model.User;
import com.jingbaba.service.IShopService;
import com.jingbaba.service.IUserService;

/**
 * 
 * 店铺模块
 * ShopAction
 * 创建人:jingbaba 
 * 时间：2016年10月30日 20:55:46
 * @version 1.0.0
 *
 */
@Controller("shopAction")
@Scope("prototype")
public class ShopAction extends BaseAction implements ServletRequestAware{

	private HttpServletRequest request;
	private Map<String, Object> datamap = new HashMap<String, Object>();
	
	public Map<String, Object> getDatamap() {
		return datamap;
	}

	public void setDatamap(Map<String, Object> datamap) {
		this.datamap = datamap;
	}
	
	@Autowired
	private IShopService shopService;
	@Autowired
	private IUserService userService;
	
	public String addShop(){
		String shopName = request.getParameter("shopName");
		String realname = request.getParameter("realname");
		String phonenum = request.getParameter("phonenum");
		String idcard = request.getParameter("idcard");
		User user = (User)request.getSession().getAttribute("user");
		user.setRealname(realname);
		user.setPhonenum(phonenum);
		user.setIdcard(idcard);
		userService.updateDefault(user);
		Shop shop = new Shop();
		shop.setShopowner(user);
		shop.setShopname(shopName);
		shopService.save(shop);
		return AJAX_SUCCESS;
	}
	
	public String hasShop(){
		User user = (User)request.getSession().getAttribute("user");
		Shop shop = shopService.findShopByUserId(user.getId());
		if(shop!=null){
			result = "yes";
		}else{
			result = "no";
		}
		return AJAX_SUCCESS;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
}