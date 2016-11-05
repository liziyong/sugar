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
import com.jingbaba.model.Good;
import com.jingbaba.model.Shopcar;
import com.jingbaba.model.User;
import com.jingbaba.service.IGoodService;
import com.jingbaba.service.IShopcarService;

/**
 * 
 * 购物车模块
 * ShopcarAction
 * 创建人:jingbaba 
 * 时间：2016年11月03日 08:32:11
 * @version 1.0.0
 *
 */
@Controller("shopcarAction")
@Scope("prototype")
public class ShopcarAction extends BaseAction implements ServletRequestAware{

	private HttpServletRequest request;
	private Map<String, Object> datamap = new HashMap<String, Object>();
	
	public Map<String, Object> getDatamap() {
		return datamap;
	}

	public void setDatamap(Map<String, Object> datamap) {
		this.datamap = datamap;
	}

	@Autowired
	private IShopcarService shopcarService;
	@Autowired
	private IGoodService goodService;
	
	public String addShopcar(){
		User user = (User)request.getSession().getAttribute("user");
		String goodid = request.getParameter("goodid");
		String totalcount = request.getParameter("totalcount");
		Shopcar shopCar = shopcarService.findAllByUserIdAndGoodId(user.getId(),Integer.parseInt(goodid));
		if(shopCar!=null){
			Integer newcount = shopCar.getGoodcount()+Integer.parseInt(totalcount);
			Shopcar shopcar = new Shopcar();
			shopcar.setGoodcount(newcount);
			shopcarService.updateDefault(shopcar);
		}else{
			Good good = goodService.get(Integer.parseInt(goodid));
			Shopcar shopcar = new Shopcar();
			shopcar.setGood(good);
			shopcar.setGoodcount(Integer.parseInt(totalcount));
			shopcar.setUser(user);
			shopcar.setShop(good.getShopid());
			shopcarService.save(shopcar);
		}
		return AJAX_SUCCESS;
	}
	
	public String getCount(){
		User user = (User)request.getSession().getAttribute("user");
		List<Shopcar> shopcarList = shopcarService.getAllShopcarByUserId(user.getId());
		datamap.put("count", shopcarList.size());
		return AJAX_SUCCESS;
	}
	
	public String delShopcar(){
		String[] goodidarray = request.getParameterValues("goodid");
		for(String gid:goodidarray){
			Integer goodid = Integer.parseInt(gid);
			User user = (User)request.getSession().getAttribute("user");
			Integer userid = user.getId();
			Shopcar shopcar = shopcarService.findShopcarBuyUserIdAndGoodId(userid,goodid);
			shopcarService.delete(shopcar);
		}
		return AJAX_SUCCESS;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}