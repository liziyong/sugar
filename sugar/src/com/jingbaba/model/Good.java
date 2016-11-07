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
 * 商品模块
 * User
 * 创建人:jingbaba
 * 时间：2016年09月06日 18:41:45
 * @version 1.0.0
 * 
 */
@Entity
@Table(name = "sugar_good")
public class Good implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String goodname; // 货名
	private String goodoprice; // 原价
	private String goodnprice; // 现价
	private Integer goodcount; // 库存
	private GoodClass goodclass; // 商品分类
	private Shop shopid;
	private Integer status; // 0上架，1下架,2热拼
	private Integer hotcount; // 热拼剩余数量
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

	@Column(name="goodname",length=30)
	public String getGoodname() {
		return goodname;
	}

	public void setGoodname(String goodname) {
		this.goodname = goodname;
	}

	public String getGoodoprice() {
		return goodoprice;
	}

	public void setGoodoprice(String goodoprice) {
		this.goodoprice = goodoprice;
	}

	public String getGoodnprice() {
		return goodnprice;
	}

	public void setGoodnprice(String goodnprice) {
		this.goodnprice = goodnprice;
	}

	public Integer getGoodcount() {
		return goodcount;
	}

	public void setGoodcount(Integer goodcount) {
		this.goodcount = goodcount;
	}

	@ManyToOne
	@JoinColumn(name="gclassid")
	public GoodClass getGoodclass() {
		return goodclass;
	}

	public void setGoodclass(GoodClass goodclass) {
		this.goodclass = goodclass;
	}

	@ManyToOne
	@JoinColumn(name="shopid")
	public Shop getShopid() {
		return shopid;
	}

	public void setShopid(Shop shopid) {
		this.shopid = shopid;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getHotcount() {
		return hotcount;
	}

	public void setHotcount(Integer hotcount) {
		this.hotcount = hotcount;
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