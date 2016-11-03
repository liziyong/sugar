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
 * 购物车模块
 * Shopcar
 * 创建人:jingbaba
 * 时间：2016年11月03日 08:32:11 
 * @version 1.0.0
 *
 */
@Entity
@Table(name = "sugar_shopcar")
public class Shopcar implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private User user;
	private Good good;
	private Shop shop;
	private Integer goodcount;
	private Integer status;
	private Date createTime;// 创建时间
	private Date updateTime;// 更新时间

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	@ManyToOne
	@JoinColumn(name="uid")
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@ManyToOne
	@JoinColumn(name="gid")
	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	@ManyToOne
	@JoinColumn(name="sid")
	public Shop getShop() {
		return shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	public Integer getGoodcount() {
		return goodcount;
	}

	public void setGoodcount(Integer goodcount) {
		this.goodcount = goodcount;
	}

	@Column(name = "status", length = 1)
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "createtime", columnDefinition = "timestamp")
	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Column(name = "updatetime")
	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
}