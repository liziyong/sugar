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
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jingbaba.core.action.BaseAction;
import com.jingbaba.model.Good;
import com.jingbaba.model.Ordergood;
import com.jingbaba.model.Shop;
import com.jingbaba.model.Shopcar;
import com.jingbaba.model.Shoporder;
import com.jingbaba.model.User;
import com.jingbaba.service.IGoodService;
import com.jingbaba.service.IOrdergoodService;
import com.jingbaba.service.IShopService;
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
	@Autowired
	private IOrdergoodService ordergoodService;
	@Autowired
	private IShopService shopService;
	
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
		String[] shop = request.getParameterValues("shop");
		Set<String> shopidList = new HashSet<String>();
		List<Map<String, Object>> shopgoodList = new ArrayList<Map<String, Object>>();
		List<Map<String, Object>> goodListF = null;
		Map<String, Object> shopmapF = null;
		Map<String, Object> goodmapF = null;
		List<String> goodidarray = new ArrayList<String>();
		// 得到所有的店铺分类
		for(int i = 0;i<shop.length;i++){
			String shopid = shop[i].split(":")[0];
			shopidList.add(shopid);
		}
		for(String shopid:shopidList){
			shopmapF = new HashMap<String, Object>();
			shopmapF.put("shop", shopService.get(Integer.parseInt(shopid)));
			goodListF = new ArrayList<Map<String, Object>>();
			for(int i = 0;i<shop.length;i++){
				if(shopid.equals(shop[i].split(":")[0])){
					goodmapF = new HashMap<String, Object>();
					String goodInfo = shop[i].split(":")[1];
					String goodid = goodInfo.split("=")[0];
					goodidarray.add(goodid);
					String goodcount = goodInfo.split("=")[1];
					goodmapF.put("good", goodService.get(Integer.parseInt(goodid)));
					goodmapF.put("totalcount", goodcount);
					goodListF.add(goodmapF);
				}
			}
			shopmapF.put("shopid", goodListF);
			shopgoodList.add(shopmapF);
		}
		request.setAttribute("shopgoodList", shopgoodList);
		request.setAttribute("bycar", request.getParameter("bycar"));
		request.setAttribute("goodidarray", goodidarray);
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
		User user = (User)request.getSession().getAttribute("user");
		String status = request.getParameter("st");
		List<Map<String, Object>> mapList = null;
		List<Map<String, Object>> goodList = null;
		Map<String, Object> map = null;
		Map<String, Object> map2 = null;
		List<Shoporder> shoporderList = null;
		if(status!=null&&!"".equals(status)){
			shoporderList = shoporderService.findAllOrderByUserIdAndStatus(user.getId(),Integer.parseInt(status));
		}else{
			shoporderList = shoporderService.findAllOrderByUserId(user.getId());
		}
		if(shoporderList.size()!=0){
			mapList = new ArrayList<Map<String, Object>>();
			for(Shoporder so:shoporderList){
				map = new HashMap<String, Object>();
				map.put("shop", so.getShop());
				map.put("status", statusFormat(so.getStatus()));
				map.put("shoporder", so);
				List<Ordergood> ordergoodList = ordergoodService.findAllOrdergoodByShoporderId(so.getId());
				goodList = new ArrayList<Map<String, Object>>();
				for(Ordergood og:ordergoodList){
					map2 = new HashMap<String, Object>();
					String allmoney = og.getAllmoney();
					Good good = og.getGood();
					Integer goodcount = og.getGoodcount();
					map2.put("good", good);
					map2.put("goodcount", goodcount);
					map2.put("allmoney", allmoney);
					goodList.add(map2);
				}
				map.put("shopid", goodList);
				mapList.add(map);
			}
		}
		request.setAttribute("mapList", mapList);
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
	
	public String toMyShop(){
		User user = (User)request.getSession().getAttribute("user");
		Shop shop = shopService.findShopByUserId(user.getId());
		request.setAttribute("shop", shop);
		Integer shopid = shop.getId();
		List<Good> goodList = goodService.findAllGoodByShopId(shopid);
		request.setAttribute("goodList", goodList);
		List<Good> hotgoodList = goodService.findAllHotGoodByShopIdAndStatus(shopid,2);
		if(hotgoodList.size()!=0){
			request.setAttribute("hotgoodList", hotgoodList);
		}
		return "myshop";
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}
