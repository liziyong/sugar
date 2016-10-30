/**   
 * @Title: CommentsList.java  
 * @Package com.momolela.model  
 * @Description: TODO  
 * @author momolela   
 * @date 2016-6-7 下午1:47:35  
 * @version V1.0   
 */
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
 * @ClassName: GoodpicList  
 * @Description:   
 * @author: jingbaba
 * @date 2016-6-7 下午1:47:35  
 */
@Entity
@Table(name = "sugar_goodpiclist")
public class GoodpicList {

	private Integer id;
	private String goodpicurl;
	private Date createtime;
	private Good good;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGoodpicurl() {
		return goodpicurl;
	}

	public void setGoodpicurl(String goodpicurl) {
		this.goodpicurl = goodpicurl;
	}

	@Column(name = "createtime", columnDefinition = "timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP")
	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	@ManyToOne
	@JoinColumn(name = "gid")
	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}
}
