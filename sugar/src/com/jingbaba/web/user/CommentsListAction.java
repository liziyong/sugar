package com.jingbaba.web.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jingbaba.core.action.BaseAction;
import com.jingbaba.service.ICommentsListService;

/**
 * 
 * 商品评论模块
 * CommentsListAction
 * 创建人:jingbaba 
 * 时间：2016年10月30日 21:03:03
 * @version 1.0.0
 *
 */
@Controller("commentsListAction")
@Scope("prototype")
public class CommentsListAction extends BaseAction implements ServletRequestAware{

	private HttpServletRequest request;
	private Map<String, Object> datamap = new HashMap<String, Object>();
	
	public Map<String, Object> getDatamap() {
		return datamap;
	}

	public void setDatamap(Map<String, Object> datamap) {
		this.datamap = datamap;
	}

	@Autowired
	private ICommentsListService commentsListService;
	
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}