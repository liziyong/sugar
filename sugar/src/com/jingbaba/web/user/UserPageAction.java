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
import com.jingbaba.model.Shopcar;
import com.jingbaba.model.Shoporder;
import com.jingbaba.model.User;
import com.jingbaba.service.IGoodService;
import com.jingbaba.service.IShopcarService;
import com.jingbaba.service.IShoporderService;

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
	@Autowired
	private IShopcarService shopcarService;
	@Autowired
	private IShoporderService shoporderService;
	
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
	
	public String toMyShopCar(){
		
		User user = (User)request.getSession().getAttribute("user");
		List<Shopcar> shopcarList = shopcarService.findAllGoodByUserId(user.getId());
		List<Shop> shopList = shopcarService.findAllShopId(user.getId());
		List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
		Map<String, Object> map = null;
		List<Map<String, Object>> goodList = null;
		// 通过shopid分类
		for(Shop si:shopList){
			map = new HashMap<String, Object>();
			goodList = new ArrayList<Map<String, Object>>();
			for(Shopcar sc:shopcarList){
				if(sc.getShop().getId().toString().equals(si.getId().toString())){
					Map<String, Object> map2 = new HashMap<String, Object>();
					map2.put("good", sc.getGood());
					map2.put("goodcount", sc.getGoodcount());
					goodList.add(map2);
					map.put("shop", sc.getShop());
				}
				map.put("shopid", goodList);
			}
			mapList.add(map);
		}
		request.setAttribute("mapList", mapList);
		return "shopcar";
	}
	
	public String toAllOrder(){
		String status = request.getParameter("st");
		String pn = request.getParameter("pn");
		User user = (User)request.getSession().getAttribute("user");
		List<Shoporder> shoporderList = new ArrayList<Shoporder>();
		if(status==null||"".equals(status)){
			shoporderList = shoporderService.findAllOrderByUserId(user.getId(), Integer.parseInt(pn));
		}else{
			shoporderList = shoporderService.findAllOrderByUserIdAndStatus(user.getId(),Integer.parseInt(status), Integer.parseInt(pn));
		}
		List<Shop> shopList = shoporderService.findAllShop(user.getId());
		Double i = (double) shopList.size();
		List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
		Map<String, Object> map = null;
		List<Map<String, Object>> goodList = null;
		// 通过shopid分类
		if(shoporderList.size()!=0){
			
			for(Shop sl:shopList){
				map = new HashMap<String, Object>();
				goodList = new ArrayList<Map<String, Object>>();
				for(Shoporder so:shoporderList){
					if(so.getShop().getId().toString().equals(sl.getId().toString())){
						Map<String, Object> map2 = new HashMap<String, Object>();
						map2.put("good", so.getGood());
						map2.put("goodcount", so.getGoodcount());
						map2.put("status", statusFormat(so.getStatus()));
						goodList.add(map2);
						map.put("shop", so.getShop());
						map.put("shoporder", so);
					}
					map.put("shopid", goodList);
				}
				mapList.add(map);
			}
			request.setAttribute("mapList", mapList);
		}
		Integer[] curPage = new Integer[2];
		curPage[1] = (int) Math.ceil(i/5);
		System.out.println(curPage[1]);
		curPage[0] = Integer.parseInt(pn);
		request.setAttribute("curPage", curPage);
		return "allorder";
	}
	public String statusFormat(Integer status){
		if(status==0){
			return "已关闭";
		}else if(status==1){
			return "待发货";
		}else if(status==2){
			return "待收货";
		}else{
			return "待评价";
		}
	}
	
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}
