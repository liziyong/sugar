package com.jingbaba.web.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jingbaba.core.action.BaseAction;
import com.jingbaba.service.IGoodClassService;

/**
 * 
 * 商品类型模块
 * GoodClassAction
 * 创建人:jingbaba 
 * 时间：2016年11月08日 02:00:25
 * @version 1.0.0
 *
 */
@Controller("goodClassAction")
@Scope("prototype")
public class GoodClassAction extends BaseAction implements ServletRequestAware{

	private HttpServletRequest request;
	private Map<String, Object> datamap = new HashMap<String, Object>();
	
	public Map<String, Object> getDatamap() {
		return datamap;
	}

	public void setDatamap(Map<String, Object> datamap) {
		this.datamap = datamap;
	}

	@Autowired
	private IGoodClassService goodClassService;
	
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}