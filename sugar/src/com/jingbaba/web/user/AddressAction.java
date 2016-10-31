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
import com.jingbaba.model.Address;
import com.jingbaba.model.User;
import com.jingbaba.service.IAddressService;

/**
 * 
 * 用户地址模块
 * AddressAction
 * 创建人:jingbaba 
 * 时间：2016年10月31日 22:06:54
 * @version 1.0.0
 *
 */
@Controller("addressAction")
@Scope("prototype")
public class AddressAction extends BaseAction implements ServletRequestAware{

	private HttpServletRequest request;
	private Map<String, Object> datamap = new HashMap<String, Object>();
	
	public Map<String, Object> getDatamap() {
		return datamap;
	}

	public void setDatamap(Map<String, Object> datamap) {
		this.datamap = datamap;
	}

	@Autowired
	private IAddressService addressService;
	
	public String getAllAddress(){
		User user = (User)request.getSession().getAttribute("user");
		Integer userid = user.getId();
		List<Address> addressList= addressService.findAllAddressByUserId(userid);
		datamap.put("addressList", addressList);
		return AJAX_SUCCESS;
	}
	
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}