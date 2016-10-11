package com.jingbaba.dao;

import com.jingbaba.core.dao.IBaseDao;
import com.jingbaba.model.Admin;

@SuppressWarnings("rawtypes")
public interface IAdminDao extends IBaseDao{
	public Admin findAdmin(String account, String password);
}
