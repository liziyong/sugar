/**   
 * @Title: PageAction.java  
 * @Package com.momolela.web.user  
 * @Description: TODO  
 * @author momolela   
 * @date 2016-6-4 下午6:59:04  
 * @version V1.0   
 */
package com.jingbaba.web.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jingbaba.core.action.BaseAction;
import com.jingbaba.model.Good;
import com.jingbaba.model.Shop;
import com.jingbaba.service.IGoodService;

/**
 * 前台页面的跳转使用的action，跳转前数据的加载都可以在这里执行。
 * @ClassName: UserPageAction
 * @Description: 
 * @author: jingbaba
 * @date 2016-6-4 下午6:59:04
 * 
 */
@Controller("userPageAction")
@Scope("prototype")
public class UserPageAction extends BaseAction implements ServletRequestAware{
	
	private HttpServletRequest request;
	@Autowired
	private IGoodService goodService;
	
	public String oneToBuyProcess(){
		String goodid = request.getParameter("goodid");
		String totalcount = request.getParameter("totalcount");
		Good good = goodService.get(Integer.parseInt(goodid));
		Shop shop = good.getShopid();
		List<Map<String, Object>> shopgoodList = new ArrayList<Map<String, Object>>();
		List<Map<String, Object>> goodList = new ArrayList<Map<String, Object>>();
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("good", good);
		map2.put("totalcount", totalcount);
		goodList.add(map2);
		map.put("shop",shop);
		map.put("shopid",goodList);
		shopgoodList.add(map);
		request.setAttribute("shopgoodList", shopgoodList);
		return "buyProcess";
	}
	
	public String carToBuyProcess(){
		String shopgood[] = request.getParameterValues("shopgoodList");
		String goodid = request.getParameter("goodid");
		String totalcount = request.getParameter("totalcount");
		Good good = goodService.get(Integer.parseInt(goodid));
		Shop shop = good.getShopid();
		List<Map<String, Object>> shopgoodList = new ArrayList<Map<String, Object>>();
		List<Map<String, Object>> goodList = new ArrayList<Map<String, Object>>();
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("good", good);
		map2.put("totalcount", totalcount);
		goodList.add(map2);
		map.put("shop",shop);
		map.put("shopid",goodList);
		shopgoodList.add(map);
		request.setAttribute("shopgoodList", shopgoodList);
		return "buyProcess";
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}
