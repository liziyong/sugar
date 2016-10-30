package com.jingbaba.web.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jingbaba.core.action.BaseAction;
import com.jingbaba.model.CommentsList;
import com.jingbaba.model.Good;
import com.jingbaba.model.GoodpicList;
import com.jingbaba.service.ICommentsListService;
import com.jingbaba.service.IGoodService;
import com.jingbaba.service.IGoodpicListService;

/**
 * 
 * 商品模块
 * GoodAction
 * 创建人:jingbaba 
 * 时间：2016年10月30日 21:00:54
 * @version 1.0.0
 *
 */
@Controller("goodAction")
@Scope("prototype")
public class GoodAction extends BaseAction implements ServletRequestAware{

	private HttpServletRequest request;
	private Map<String, Object> datamap = new HashMap<String, Object>();
	
	public Map<String, Object> getDatamap() {
		return datamap;
	}

	public void setDatamap(Map<String, Object> datamap) {
		this.datamap = datamap;
	}

	@Autowired
	private IGoodService goodService;
	@Autowired
	private ICommentsListService commentsListService;
	@Autowired
	private IGoodpicListService goodpicListService;
	
	public String findGoodById(){
		Integer goodid = Integer.parseInt(request.getParameter("goodid"));
		Good good = goodService.get(goodid);
		List<CommentsList> commentsList = commentsListService.findAllCommentsListByGoodId(goodid);
		List<GoodpicList> goodpicList = goodpicListService.findAllGoodpicListByGoodId(goodid);
		datamap.put("good", good);
		datamap.put("commentsList", commentsList);
		datamap.put("goodpicList", goodpicList);
		return AJAX_SUCCESS;
	}
	
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}