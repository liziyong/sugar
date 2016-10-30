package com.jingbaba.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 
 * 店铺模块
 * 创建人:jingbaba
 * 时间：2016年09月06日 18:41:45
 * @version 1.0.0
 * 
 */
@Entity
@Table(name = "sugar_shop")
public class Shop implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String shopname;
	private User shopowner;
	private Integer status;
	private Date createtime;
	private Date updatetime;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getShopname() {
		return shopname;
	}

	public void setShopname(String shopname) {
		this.shopname = shopname;
	}

	@ManyToOne
	@JoinColumn(name="uid")
	public User getShopowner() {
		return shopowner;
	}

	public void setShopowner(User shopowner) {
		this.shopowner = shopowner;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "createtime", columnDefinition = "timestamp")
	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
}