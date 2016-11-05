package com.jingbaba.web.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jingbaba.core.action.BaseAction;
import com.jingbaba.model.CommentsList;
import com.jingbaba.model.Good;
import com.jingbaba.model.User;
import com.jingbaba.service.ICommentsListService;
import com.jingbaba.service.IGoodService;

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
	@Autowired
	private IGoodService goodService;
	
	public String add(){
		String[] goodidarray = request.getParameterValues("goodidarray");
		String comments = request.getParameter("comments");
		User user = (User)request.getSession().getAttribute("user");
		for(String gid:goodidarray){
			CommentsList commentsList = new CommentsList();
			Good good = goodService.get(Integer.parseInt(gid));
			commentsList.setComments(comments);
			commentsList.setGood(good);
			commentsList.setUser(user);
			commentsListService.save(commentsList);
		}
		return AJAX_SUCCESS;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}