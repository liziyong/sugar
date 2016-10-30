/**   
 * @Title: CommentsList.java  
 * @Package com.momolela.model  
 * @Description: TODO  
 * @author momolela   
 * @date 2016-6-7 下午1:47:35  
 * @version V1.0   
 */
package com.jingbaba.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName: GoodClass  
 * @Description:   
 * @author: jingbaba
 * @date 2016-6-7 下午1:47:35  
 */
@Entity
@Table(name = "sugar_goodclass")
public class GoodClass {

	private Integer id;
	private String goodclass;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGoodclass() {
		return goodclass;
	}

	public void setGoodclass(String goodclass) {
		this.goodclass = goodclass;
	}

}
