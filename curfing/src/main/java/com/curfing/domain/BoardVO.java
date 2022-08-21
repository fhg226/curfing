package com.curfing.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	private int bno;
	private String memberid;
	private String cafename;
	private String address;
	private String phone;
	private String cafeinfo;
	private long price;
	private String car;
	private String opentime;
	private String closetime;
	private String dayoff;
	private String site;
	private String menu;
	private String picture;
	private Date regDate;
	private Date updateDate;
	private int upcount;
	
}
  