package com.jingbaba.web.user;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.jingbaba.model.Ordergood;
import com.jingbaba.model.Shoporder;
import com.jingbaba.model.User;
import com.jingbaba.service.IAddressService;
import com.jingbaba.service.IGoodService;
import com.jingbaba.service.IOrdergoodService;
import com.jingbaba.service.IShopService;
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
	@Autowired
	private IAddressService addressService;
	@Autowired
	private IShopService shopService;
	@Autowired
	private IGoodService goodService;
	@Autowired
	private IOrdergoodService ordergoodService;
	
	public String addOrder(){
		String shopid = request.getParameter("shopid");
		String[] goodInfo = request.getParameterValues("goodInfo");
		String addressid = request.getParameter("addressid");
		User user = (User)request.getSession().getAttribute("user");
		String ordernum = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		Shoporder shoporder = new Shoporder();
		shoporder.setAddress(addressService.get(Integer.parseInt(addressid)));
		shoporder.setOrdernum(ordernum);
		shoporder.setShop(shopService.get(Integer.parseInt(shopid)));
		shoporder.setStatus(1);
		shoporder.setUser(user);
		Shoporder Shoporder = shoporderService.addShoporder(shoporder);
		for(int i = 0;i<goodInfo.length;i++){
			String goodid = goodInfo[i].split("=")[0];
			String goodcount = goodInfo[i].split("=")[1];
			Good good = goodService.get(Integer.parseInt(goodid));
			int allmoney = Integer.parseInt(good.getGoodnprice())*Integer.parseInt(goodcount);
			Ordergood ordergood = new Ordergood();
			ordergood.setAllmoney(allmoney+"");
			ordergood.setGood(good);
			ordergood.setGoodcount(Integer.parseInt(goodcount));
			ordergood.setShoporder(Shoporder);
			ordergoodService.save(ordergood);
		}
		return AJAX_SUCCESS;
	}
	
	public String del(){
		Integer shoporderid = Integer.parseInt(request.getParameter("shoporderid"));
		List<Ordergood> ordergoodList = ordergoodService.findAllOrdergoodByShoporderId(shoporderid);
		for(Ordergood og:ordergoodList){
			ordergoodService.delete(og);
		}
		Shoporder shoporder = shoporderService.get(shoporderid);
		shoporderService.delete(shoporder);
		return AJAX_SUCCESS;
	}
	
	public String updatestatus(){
		String shoporderid = request.getParameter("shoporderid");
		String status = request.getParameter("status");
		Shoporder shoporder = new Shoporder();
		shoporder.setId(Integer.parseInt(shoporderid));
		shoporder.setStatus(Integer.parseInt(status));
		shoporderService.updateDefault(shoporder);
		return AJAX_SUCCESS;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}