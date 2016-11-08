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
import com.jingbaba.model.Shop;
import com.jingbaba.model.User;
import com.jingbaba.service.ICommentsListService;
import com.jingbaba.service.IGoodClassService;
import com.jingbaba.service.IGoodService;
import com.jingbaba.service.IGoodpicListService;
import com.jingbaba.service.IShopService;

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
	private IGoodClassService goodClassService;
	@Autowired
	private IShopService shopService;
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
	
	public String findAllGood(){
		String sql = "FROM Good";
		List<Good> goodList = goodService.findAll(sql);
		datamap.put("goodList", goodList);
		return AJAX_SUCCESS;
	}
	
	public String addGood(){
		User user = (User)request.getSession().getAttribute("user");
		Shop shop = shopService.findShopByUserId(user.getId());
		String goodid = request.getParameter("goodid");
		String goodname = request.getParameter("goodname");
		String goodcount = request.getParameter("goodcount");
		String goodoprice = request.getParameter("goodoprice");
		String goodnprice = request.getParameter("goodnprice");
		Integer gclassid = Integer.parseInt(request.getParameter("gclassid"));
		Good good = new Good();
		good.setId(Integer.parseInt(goodid));
		good.setGoodclass(goodClassService.get(gclassid));
		good.setGoodcount(Integer.parseInt(goodcount));
		good.setGoodname(goodname);
		good.setGoodnprice(goodnprice);
		good.setGoodoprice(goodoprice);
		good.setShopid(shop);
		goodService.updateDefault(good);
		GoodpicList gpl = new GoodpicList();
		gpl.setGood(goodService.get(Integer.parseInt(goodid)));
		gpl.setGoodpicurl("images/good/"+Integer.parseInt(goodid)+"/1.jpg");
		goodpicListService.save(gpl);
		return AJAX_SUCCESS;
	}
	
	public String changeGoodStatus(){
		String hotcount = request.getParameter("hotcount");
		String goodid = request.getParameter("goodid");
		String status = request.getParameter("status");
		Good good = new Good();
		if(hotcount!=null){
			good.setHotcount(Integer.parseInt(hotcount));
		}
		good.setId(Integer.parseInt(goodid));
		good.setStatus(Integer.parseInt(status));
		goodService.updateDefault(good);
		return AJAX_SUCCESS;
	}
	
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}