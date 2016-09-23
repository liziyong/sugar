package com.jingbaba.dao;

import com.jingbaba.model.Admin;

public interface IAdminDao {
	public Admin findAdmin(String account, String password);
}
