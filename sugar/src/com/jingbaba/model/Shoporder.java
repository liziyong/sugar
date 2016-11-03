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
 * 订单模块
 * Shoporder
 * 创建人:jingbaba
 * 时间：2016年11月03日 08:41:16 
 * @version 1.0.0
 *
 */
@Entity
@Table(name = "sugar_shoporder")
public class Shoporder implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer status;
	private String ordernum; // 根据日期生成的订单号
	private User user;
	private Shop shop;
	private Good good;
	private Integer goodcount;
	private String allmoney;
	private Date createTime; // 创建时间
	private Date updateTime; // 更新时间

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
	@JoinColumn(name="sid")
	public Shop getShop() {
		return shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	@Column(name = "status", length = 1)
	public Integer getStatus() {
		return status;
	}

	public String getOrdernum() {
		return ordernum;
	}

	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}

	@ManyToOne
	@JoinColumn(name="gid")
	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	public Integer getGoodcount() {
		return goodcount;
	}

	public void setGoodcount(Integer goodcount) {
		this.goodcount = goodcount;
	}

	public String getAllmoney() {
		return allmoney;
	}

	public void setAllmoney(String allmoney) {
		this.allmoney = allmoney;
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