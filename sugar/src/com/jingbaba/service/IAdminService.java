package com.jingbaba.service;

import com.jingbaba.model.Admin;

public interface IAdminService {

	public Admin findAdmin(String account, String password);
}
