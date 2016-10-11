package com.jingbaba.service;

import com.jingbaba.core.service.IBaseService;
import com.jingbaba.model.Admin;

@SuppressWarnings("rawtypes")
public interface IAdminService extends IBaseService {

	public Admin findAdmin(String account, String password);
}
