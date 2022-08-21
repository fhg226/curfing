package com.curfing.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private int rno;
	private String userid;
	private int bno;
	private int replygrade;
	private String reply;
	private Date replydate;
	private Date updatedate;
	
}
