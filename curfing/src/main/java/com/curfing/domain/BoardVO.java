package com.curfing.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	private long bno;
	private String name;
	private String address;
	private String phone;
	private String foodType;
	private long price;
	private String parking;
	private String salesTime;
	private String holiday;
	private String site;
	private String menu;
	private String picture;
	private Date regDate;
	
}
  