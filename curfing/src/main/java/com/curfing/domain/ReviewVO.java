package com.curfing.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private long rno;
	private long uno;
	private long bno;
	private int replygrade;
	private String reply;
	private Date replydate;
	private Date updatedate;
	
	

}
