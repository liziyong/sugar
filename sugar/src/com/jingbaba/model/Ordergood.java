package com.jingbaba.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 
 * 订单中间表模块
 * Ordergood
 * 创建人:jingbaba
 * 时间：2016年11月04日 20:49:35 
 * @version 1.0.0
 *
 */
@Entity
@Table(name = "sugar_ordergood")
public class Ordergood implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;// 主键
	private Shoporder shoporder;
	private Good good;
	private Integer goodcount;
	private String allmoney;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne
	@JoinColumn(name="shoporder_id")
	public Shoporder getShoporder() {
		return shoporder;
	}

	public void setShoporder(Shoporder shoporder) {
		this.shoporder = shoporder;
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
	
}