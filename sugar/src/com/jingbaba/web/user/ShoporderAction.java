package com.jingbaba.web.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jingbaba.core.action.BaseAction;
import com.jingbaba.service.IShoporderService;

/**
 * 
 * 订单模块
 * ShoporderAction
 * 创建人:jingbaba 
 * 时间：2016年11月03日 08:41:16
 * @version 1.0.0
 *
 */
@Controller("shoporderAction")
@Scope("prototype")
public class ShoporderAction extends BaseAction implements ServletRequestAware{

	private HttpServletRequest request;
	private Map<String, Object> datamap = new HashMap<String, Object>();
	
	public Map<String, Object> getDatamap() {
		return datamap;
	}

	public void setDatamap(Map<String, Object> datamap) {
		this.datamap = datamap;
	}

	@Autowired
	private IShoporderService shoporderService;
	
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}