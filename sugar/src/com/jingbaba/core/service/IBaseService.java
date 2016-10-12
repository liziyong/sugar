package com.jingbaba.core.service;

import java.io.Serializable;
import java.util.List;


/**
 * 
 * @ClassName: IBaseService
 * @Description: 
 * @author: momolela
 * @date 2016-6-19 下午2:18:38
 * @param <T>
 * @param <PK>
 */
public interface IBaseService<T,PK extends Serializable> {

	/**
	 * 保存方法
	 * @param t
	 * @return
	 */
	public T save(T t); 
	
	/**
	 * 根据主键获取实体(get)
	 * @param id
	 * @return
	 */
	public T get(PK id) ;
	
	/**
	 * 根据主键获取实体(load)
	 * @param id
	 * @return
	 */
	public T load(PK id) ;
	
	/**
	 * 根据对象删除
	 * @param entity
	 */
	public void delete(T entity);
	
	/**
	 * 根据主键删除实体
	 * @param id
	 */
	public T deleteById(PK id); 
	
	/**
	 * 更具对象更新数据库中的一条记录
	 * @param entity
	 */
	public T update(T entity);
	
	/**
	 * 更新对象
	 * @param entity
	 */
	public T updateDefault(T entity);
	
	/**
	 * 最简单的组合查询
	 * @param sql
	 * @param args
	 */
	public List<T> find(String sql ,Object...args);
	
	/**
	 * 查询表中所有的记录
	 * @param sql
	 */
	public List<T> findAll(String sql);
	
}
