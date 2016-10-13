package com.jingbaba.core.service;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.jingbaba.core.dao.IBaseDao;

/**
 * Service 基类
 */
@Service
public class BaseServiceImpl<T, PK extends Serializable> implements IBaseService<T, PK> {

	protected Logger log = LoggerFactory.getLogger(getClass());
	
	@Resource(name="baseDaoImpl")
	private IBaseDao<T, PK> baseDao;

	public IBaseDao<T, PK> getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(IBaseDao<T, PK> baseDao) {
		this.baseDao = baseDao;
	}

	public T save(T t) {
		return baseDao.save(t);
	}

	public T get(PK id) {
		return baseDao.get(id);
	}

	public T load(PK id) {
		return baseDao.load(id);
	}

	public void delete(T entity) {
		baseDao.delete(entity);
	}

	public T deleteById(PK id) {
		return baseDao.deleteById(id);
	}

	public T update(T entity) {
		return baseDao.update(entity);
	}

	public T updateDefault(T entity) {
		return baseDao.updateDefault(entity);
	}

	public List<T> find(String sql, Object... args) {
		return baseDao.find(sql, args);
	}

	public List<T> findAll(String sql) {
		return baseDao.findAll(sql);
	}
}
